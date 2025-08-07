import speech_recognition as sr
import webbrowser
import pyttsx3
import requests
import openai
from gtts import gTTS
import pygame
import os
from musicLibrary import music

# Set your OpenAI and NewsAPI keys
openai.api_key = "<Your OpenAI Key>"
newsapi = "<Your NewsAPI Key>"

def speak(text):
    tts = gTTS(text)
    tts.save('temp.mp3')
    pygame.mixer.init()
    pygame.mixer.music.load('temp.mp3')
    pygame.mixer.music.play()
    while pygame.mixer.music.get_busy():
        pygame.time.Clock().tick(10)
    pygame.mixer.music.unload()
    if os.path.exists("temp.mp3"):
        os.remove("temp.mp3")

def aiProcess(command):
    completion = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "system", "content": "You are a virtual assistant named jarvis skilled in general tasks like Alexa and Google Cloud. Give short responses please"},
            {"role": "user", "content": command}
        ]
    )
    return completion.choices[0].message["content"]

def processCommand(c):
    if "open google" in c.lower():
        webbrowser.open("https://google.com")
    elif "open facebook" in c.lower():
        webbrowser.open("https://facebook.com")
    elif "open youtube" in c.lower():
        webbrowser.open("https://youtube.com")
    elif "open linkedin" in c.lower():
        webbrowser.open("https://linkedin.com")
    elif c.lower().startswith("play"):
        try:
            song = c.lower().split(" ")[1]
            link = music[song]
            webbrowser.open(link)
        except KeyError:
            speak("Sorry, I don't have that song.")
        except IndexError:
            speak("Please specify a song name.")
    elif "news" in c.lower():
        r = requests.get(f"https://newsapi.org/v2/top-headlines?country=in&apiKey={newsapi}")
        if r.status_code == 200:
            data = r.json()
            articles = data.get('articles', [])
            for article in articles[:5]:  # Limit to 5 news
                speak(article['title'])
    else:
        output = aiProcess(c)
        speak(output)

if __name__ == "__main__":
    speak("Initializing Jarvis....")
    while True:
        try:
            r = sr.Recognizer()
            with sr.Microphone() as source:
                print("Listening for wake word...")
                audio = r.listen(source, timeout=5, phrase_time_limit=5)
                word = r.recognize_google(audio)
                if word.lower() == "jarvis":
                    speak("Yes?")
                    with sr.Microphone() as source:
                        audio = r.listen(source, timeout=5, phrase_time_limit=8)
                        command = r.recognize_google(audio)
                        print("Command:", command)
                        if command.lower() in ["exit", "quit", "shutdown"]:
                            speak("Goodbye!")
                            break
                        processCommand(command)
        except sr.WaitTimeoutError:
            continue
        except Exception as e:
            print(f"Error: {e}")
