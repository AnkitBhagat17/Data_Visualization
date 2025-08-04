# Array :

# Array is collection of similar elements stored at contiguous memory locations.
# It is indexed from 0 to n-1 where n is the number of elements in the array.
# Size of array is fixed and cannot be changed after creation.

# Array is not a built-in data structure and therefore need to ne imported
# Array is mutable and can be changed after creation

from array import *
a1=array('i',[1,2,3,41,3])
print(type(a1))

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