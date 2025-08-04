# Array :

# Array is collection of similar elements stored at contiguous memory locations.
# It is indexed from 0 to n-1 where n is the number of elements in the array.
# Size of array is fixed and cannot be changed after creation.

# Array is not a built-in data structure and therefore need to ne imported
# Array is mutable and can be changed after creation

from array import *
a1=array('i',[1,2,3,41,3])
# print(type(a1))

# for x in a1:
#     print(x, end=" ")
# print(a1[0],"\n")

# i = 0
# while(i<len(a1)):
#     print(a1[i])
#     i += 1

# Array Methods 
# 1) Append() - Adds an element to the end of the array
# 2) Insert() - Adds an element at a specific index
# 3) Remove() - Removes the first occurrence of an element from the array
# 4) Pop() - Removes the element at a specific index
# 5) Index() - Returns the index of the first occurrence of an element
# 6) Count() - Returns the number of occurrences of an element in the array
# 7) Reverse() - Reverses the order of the elements in the array
# 8) Sort() - Sorts the elements of the array in ascending order
# 9) fromlist() - Converts a list to an array
# 10) tolist() - Converts an array to a list

# a1.append(50)
# print(a1,end=" ")
# print(a1.count(3))

# print(a1.index(3))  # Returns the index of the first occurrence of 3



# 2) List : It is a collection of different data types stored at non-contiguous memory locations.
# It is indexed from 0 to n-1 where n is the number of elements in the list.
# Size of list is dynamic and can be changed after creation.    
# List is a built-in data structure and therefore does not need to be imported

#  It is a class
# List is mutable and can be changed after creation
# List Elements are indexed
# List is an iterable
# List can grow (dynamic array)
# List can contian different type elements.


# Array
# 1) Collection of same type elements
# 2) Fixed Size
# 3) Indexed

# Dynamic Array
# 1) Collection of same type elements
# 2) resizable
# 3) Indexed 

list1 = [10,20,30]
list2 = []


list3 = [1, 2, 3, 4, 5, "Ankit", 3.14, True]
# print(type(list3))

# List Methods
# 1) Append() - Adds an element to the end of the list
# 2) Insert() - Adds an element at a specific index
# 3) Remove() - Removes the first occurrence of an element from the list
# 4) Pop() - Removes the element at a specific index
# 5) Index() - Returns the index of the first occurrence of an element
# 6) Count() - Returns the number of occurrences of an element in the list
# 7) Reverse() - Reverses the order of the elements in the list
# 8) Sort() - Sorts the elements of the list in ascending order
# 9) fromlist() - Converts a list to an array
# 10) tolist() - Converts an array to a list
# 11) Extend() - Adds the elements of an iterable to the end of the list

list1.append(40)
# print("List after Appending an Element: ",list1)

list1.insert(2, 49)
# print("List after Inserting the Element at Index 2 : ",list1)

list1.remove(49)
# print("List after removing an element : ",list1)

list1.pop(2)
# print("List after Popping the Element at Index 2 : ",list1)

# print("Index of 30 in the list : ",list1.index(10))  # Returns the index of the first occurrence of 30
# print("Count of 10 in the list : ",list1.count(10))  # Returns the number of occurrences of 10
list1.reverse()
# print("List after Reversing the Elements : ",list1)

list1.sort()
# print("List after Sorting the Elements : ",list1)

list4 = [1, 2, 3, 4, 5]
list1.extend(list4)
# print("List after Extending the Elements : ",list1)



#  Built In Methods 

# 1) len() - Returns the number of elements in the list
# 2) max() - Returns the maximum element in the list
# 3) min() - Returns the minimum element in the list
# 4) sum() - Returns the sum of all elements in the list
# 5) sorted() - Returns a new sorted list from the elements of any iterable
# 6) reversed() - Returns a reverse iterator over the elements of the list



import numpy as np

a = np.array([1,2,3,4])
print("Printing the One Dimensional Array : ",a)

b = np.array([[1,2,3,4],[6,7,8,9]])
print("Printing the Two Dimensional Array : ",b)