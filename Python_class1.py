                            #Python Assignment
"""
                LIST
"""
"""""
Q: Write a Python program to remove duplicates from a list.
INPUT: a = [10,20,30,20,10,50,60,40,80,50,40]
OUTPUT: {40, 10, 80, 50, 20, 60, 30}
"""
a = [10,20,30,20,10,50,60,40,80,50,40]
#remove duplicates
print(list(set(a)));

#   Note: When you convert the list to set using set(a), it automatically removes duplicates, as sets cannot contain 
# duplicate elements by definition. Then, you convert the set back to a list using list(set(a)), which gives you the desired output 
# with duplicate elements removed. The order may vary in output as set does not maintain order of values.




"""
Q. Write a Python program to sum all the items in a list.
INPUT: [1,2,-8]
OUTPUT: -5
"""
a = [1,2,-8]
#   sum of all items in a list
print(sum(a));



"""""
Q. Write a Python program to count the number of strings from a given list of
strings with length 2 or more and the first and last characters are the same.
INPUT: ['abc', 'xyz', 'aba', '1221']
OUTPUT: 2
"""
a = ['abc', 'xyz', 'aba', '1221']
count = 0

for i in a:
    if len(i) >= 2 and i[0] == i[-1]:
        count += 1

print(count)



"""""
Q. Write a Python program to print a specified list after removing the 0th, 4th
and 5th elements.
INPUT: ['Red', 'Green', 'White', 'Black', 'Pink', 'Yellow']
OUTPUT: ['Green', 'White', 'Black']
"""
a = ['Red', 'Green', 'White', 'Black', 'Pink', 'Yellow']

b = a[1:4]
print(b)



"""""
Q. Write a Python program to print the numbers of a specified list after removing
even numbers from it.
INPUT: [7,8, 120, 25, 44, 20, 27]
OUTPUT: [7,25,27]
"""
a = [7,8, 120, 25, 44, 20, 27]
c=[]
for i in a:
    if i%2 !=0:
        c.append(i)        
print(c);

#       or
a = [7,8, 120, 25, 44, 20, 27]
c = [i for i in a if i%2 !=0]       
print(c);


"""""
Q. Write a Python program to get unique values from a list.
INPUT: [10, 20, 30, 40, 20, 50, 60, 40]
OUTPUT: [40, 10, 50, 20, 60, 30]
"""
a = [10, 20, 30, 40, 20, 50, 60, 40]
b = list(set(a))
print(b);



"""""
Q. Write a Python program to convert a list of characters into a string.
INPUT: ['a', 'b', 'c', 'd']
OUTPUT: abcd
"""
INPUT= ['a', 'b', 'c', 'd']
OUTPUT= ''.join(INPUT)
print(OUTPUT);

#       Joining elements: ''.join(INPUT) concatenates all elements in the list INPUT into a single string.


"""""
Q. Write a Python program to calculate the difference between the two lists.
INPUT:
list1 = [1, 3, 5, 7, 9]
list2 = [1, 2, 4, 6, 7, 8]
OUTPUT: [9, 3, 5, 8, 2, 4, 6]
"""
list1 = [1, 3, 5, 7, 9]
list2 = [1, 2, 4, 6, 7, 8]
OUTPUT = list(set(list1) ^ set(list2))
print(OUTPUT)

#       Note: The output sequence may vary as we are using set here.


"""""
Q. Write a Python program to get the frequency of elements in a list.
INPUT: [1, 2, 3, 2, 4, 1, 3, 5, 2, 3, 4, 1]
OUTPUT: {1: 3, 2: 3, 3: 3, 4: 2, 5: 1}
"""
a = [1, 2, 3, 2, 4, 1, 3, 5, 2, 3, 4, 1]

# Initialize an empty dictionary to store the frequency
out_dict = {}

# Iterate over each element in the list

for i in a:
    if i in out_dict:
        out_dict[i] +=1
    else:
        out_dict[i] =1

# Output the dictionary    
print(out_dict)


#               or
input_list = [1, 2, 3, 2, 4, 1, 3, 5, 2, 3, 4, 1]
# Dictionary comprehension: {x: input_list.count(x) for x in set(input_list)} 
# iterates over each unique element and counts its occurrences in the list.
output_dict = {x: input_list.count(x) for x in set(input_list)}
print(output_dict)




"""""
Q. Write a Python program to find common items in two lists.
INPUT:
color1 = "Red", "Green", "Orange", "White"
color2 = "Black", "Green", "White", "Pink"
OUTPUT: {'Green', 'White'}
"""
color1 = ["Red", "Green", "Orange", "White"]
color2 = ["Black", "Green", "White", "Pink"]
common = list(set(color1) & set(color2))
print(common)


"""""
Q. Write a Python program to create a list by concatenating a given list with a
range from 1 to n.
INPUT : ['p', 'q'] and n =5
OUTPUT: ['p1', 'q1', 'p2', 'q2', 'p3', 'q3', 'p4', 'q4', 'p5', 'q5']
"""

# 1.    Outer Loop: for i in range(1, n + 1)
# This loop iterates over numbers from 1 to n (inclusive).
# 2.    Inner Loop: for x in given_list
# This loop iterates over each element in given_list.
# 3.    Concatenation: x + str(i) For each combination of x (element from given_list) and i (number from the range), 
#  it concatenates x with the string representation of i.


#   Iteration 1: i = 1 
# x = 'p' → 'p' + '1' → 'p1' 
# x = 'q' → 'q' + '1' → 'q1'

given_list = ['p', 'q']
n = 5
output_list = [x + str(i) for i in range(1, n + 1) for x in given_list]
print(output_list)



"""""
Q. Write a Python program to convert a list of multiple integers into a single
integer.
INPUT: [11, 33, 50]
OUTPUT 113350
"""

#   Input list: input_list is the list of integers to be converted. 
# Convert to string: map(str, input_list) converts each integer in the list to a string. 
# Join strings: ''.join(map(str, input_list)) joins all the string representations together into a single string. 
# Convert to integer: int(''.join(map(str, input_list))) converts the concatenated string back to an integer.

a = [11,33,50]

b = int(''.join(map(str,a)))
print(b)


"""""
Q. Write a Python program to split a list into different variables.
INPUT: color = [("Black", "#000000", "rgb(0, 0, 0)"), ("Red", "#FF0000", "rgb(255, 0, 0)"), ("Yellow", "#FFFF00", "rgb(255, 255, 0)")]
OUTPUT:
Var1= ('Black', '#000000', 'rgb(0, 0, 0)')
Var2= ('Red', '#FF0000', 'rgb(255, 0, 0)')
Var3 = ('Yellow', '#FFFF00', 'rgb(255, 255, 0)')
"""
color = [("Black", "#000000", "rgb(0, 0, 0)"), ("Red", "#FF0000", "rgb(255, 0, 0)"), ("Yellow", "#FFFF00", "rgb(255, 255, 0)")]
Var1, Var2, Var3 = color
print("Var1=" , Var1)
print("Var2=" , Var2)
print("Var3=" , Var3)


"""""
Q. Write a Python program to split a list every Nth element.
INPUT: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n']
OUTPUT: [['a', 'd', 'g', 'j', 'm'], ['b', 'e', 'h', 'k', 'n'], ['c', 'f', 'i', 'l']]
"""

#List comprehension: [a[i::N] for i in range(N)] creates sublists by slicing the input_list starting from index i and taking every Nth element. 
# Range: for i in range(N) iterates over the range from 0 to N-1. 
# Slicing: a[i::N] slices the list starting from index i and takes every Nth element.

a = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n']
N=3
output = [a[i::N] for i in range(N)]
print(output)


"""""
                               TUPLE
"""

""""
Q. Write a Python program to unpack a tuple into several variables.
INPUT: (4,8,3)
OUTPUT:
A1=4
A2=8
A3-3
"""
a = (4,8,3)
A1, A2, A3 = a
print("A1=",A1)
print("A2=",A2)
print("A3=",A3)


"""""
Q. Write a Python program to check whether an element (5) exists within a tuple.
INPUT: ("w", 3, "r", "e", "s", "o", "u", "r", "c", "e")
OUTPUT: FALSE
"""
a = ("w", 3, "r", "e", "s", "o", "u", "r", "c", "e")
b = 5 in a
print(b)


""""
Q. Write a Python program to reverse a tuple.
INPUT: (5,10,15,20)
OUTPUT: (20,15,10,5)
"""
a = (5,10,15,20)
b = a[::-1]
print(b)

"""""
Q. Write a Python program to print a tuple with string formatting.
INPUT: (100, 200, 300)
OUTPUT: This is a tuple (100, 200, 300)
"""
a = (100,200,300)
print("This is a tuple ", a)


"""""
Q. Write a Python program to remove an empty tuple(s) from a list of tuples.
INPUT: [(), (), ('',), ('a', 'b'), ('a', 'b', 'c'), ('d')]
OUTPUT: [('',), ('a', 'b'), ('a', 'b', 'c'), 'd']
"""
#   This line uses a list comprehension to create a new list called output_list. 
# The list comprehension iterates over each tuple t in input_list. 
# The condition if t checks if the tuple t is non-empty. If t is non-empty, it is included in output_list.

input_list = [(), (), ('',), ('a', 'b'), ('a', 'b', 'c'), ('d')]
#   # Use list comprehension to remove empty tuples
output_list = [t for t in input_list if t]
print(output_list)



"""""
Q. Write a Python program to convert a given string to a tuple.
INPUT: “Shweta”
OUTPUT:('S', 'h', 'w', 'e', 't', 'a')
"""
a = "Shweta"
#   # Use tuple() constructor to convert the string to a tuple
output = tuple(a)
print(output)


"""""
Q. Write a Python program to compute the element-wise sum of given tuples.
INPUT:
(1, 2, 3, 4)
(3, 5, 2, 1)
(2, 2, 3, 1)
OUTPUT:
(6, 9, 8, 6)
"""
#   The zip function takes the corresponding elements from each tuple and groups them together.
#   The map function applies the sum function to each tuple produced by zip. 
# It computes the sum of each group of elements: [sum(1, 3, 2), sum(2, 5, 2), sum(3, 2, 3), sum(4, 1, 1)], resulting in [6, 9, 8, 6].
#   The tuple function converts the result from map into a tuple.

"""""
The zip() function is used to group corresponding elements from each tuple
together. It creates an iterator that produces tuples where the first element in
each passed iterator is paired together, the second element in each passed
iterator is paired together, and so on. For example:
zip((1, 2, 3, 4), (3, 5, 2, 1), (2, 2, 3, 1))
produces (1, 3, 2), (2, 5, 2), (3, 2, 3), (4, 1, 1)
Next, the map() function is used to apply the sum() function to each tuple in the
zipped iterator. The map() function takes a function and an iterable as arguments
and applies the function to each item in the iterable. In this case, we pass sum as
the function, which calculates the sum of the elements in each tuple. The result is
a map object.
To obtain the final result as a tuple, we use the tuple() constructor to convert the
map object into a tuple. The map object contains the element-wise sums of the
three tuples, and converting it to a tuple gives us the desired output_tuple.
"""

tuple1 = (1, 2, 3, 4)
tuple2 = (3, 5, 2, 1)
tuple3 = (2, 2, 3, 1) 
output = tuple(map(sum, zip(tuple1, tuple2, tuple3)))
print(output)
               


"""""
Q.- Write a Python program to convert a given list of tuples to a list of lists.
INPUT: [(1, 2), (2, 3), (3, 4)]
OUTPUT: [[1, 2], [2, 3], [3, 4]]
"""

tuple1 = [(1, 2), (2, 3), (3, 4)]
# Use list comprehension to convert tuples to lists
list1 = [list(t) for t in tuple1]
print(list1)


"""""
                                                SET
"""

"""""
Q. Write a Python program to remove an item from a set if it is present in the set.
INPUT: 0, 1, 2, 3, 4, 5}
OUTPUT:
Remove 2 from the said set:
{0, 1, 3, 4, 5}
Remove 0 from the said set:
{1, 3, 4, 5}
"""
Input = {0,1,2,3,4,5}
removel_set = 2
removel_set_1 = 0
Input.discard(removel_set)
print(Input)

Input.discard(removel_set_1)
print(Input)


"""""
Q. Write a Python program to check if a set is a subset of another set.
INPUT:
x: {'mango', 'apple'}
y: {'mango', 'orange'}
z: {'mango'}
OUTPUT:
If x is subset of y:False
If y is subset of z:False
If z is subset of y:True
"""
set_x = {'mango', 'apple'}
set_y = {'mango', 'orange'}
set_z = {'mango'}

print(set_x.issubset(set_y))
print(set_y.issubset(set_z))
print(set_z.issubset(set_y))


"""""
Q. Write a Python program to remove all elements from a given set at once.
INPUT: {'Green', 'Black', 'Red', 'White'}
OUTPUT: set()
"""
Input = {'Green', 'Black', 'Red', 'White'}
print("Set ", Input.clear())


"""""
Q. Write a Python program to check if two given sets have no elements in
common.
INPUT:
S1={1, 2, 3, 4}
S2={4, 5, 6, 7}
OUTPUT:
False( as 4 is common)
"""
set1 = {1, 2, 3, 4}
set2 = {4, 5, 6, 7}
common_value = set1 & set2
print(common_value)


"""""
Q. Write a Python program to check if a given value(10) is present in a set or not.
INPUT:{1, 3, 5, 7, 9, 11}
OUTPUT: False
"""
set1 = {1, 3, 5, 7, 9, 11}
value_to_check = 10
print(value_to_check in set1)


"""""
Q. Write a Python program to remove all duplicates from a given list of strings
and return a list of unique strings. Use the Python set data type.
INPUT: ['Python', 'Exercises', 'Practice', 'Solution', 'Exercises']
OUTPUT:['Solution', 'Python', 'Exercises', 'Practice']
"""
# Set contain only unique value
INPUT =  ['Python', 'Exercises', 'Practice', 'Solution', 'Exercises']
print(set(INPUT))





"""""
                                                    DICTIONARY
"""

"""""
Q. Write a Python script to add a key to a dictionary.
Input: 0: 10, 1: 20}
Output: {0: 10, 1: 20, 2: 30}
"""
dict1 = {0: 10, 1: 20}
new_key = 2
new_value = 30
dict1[new_key] = new_value
print(dict1)



"""""
Q. Write a Python script to concatenate the following dictionaries to create a
new one.
Input:
dic1= {1:10, 2:20}
dic2= {3:30, 4:40}
dic3={5:50,6:60}
Output: {1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}
"""
dict1 = {1:10, 2:20}
dict2 = {3:30, 4:40}
dict3 = {5:50, 6:60}
output = {}
# By using update method
output.update(dict1)
output.update(dict2)
output.update(dict3)

print(output)

#############      2nd Method
dict1 = {1:10, 2:20}
dict2 = {3:30, 4:40}
dict3 = {5:50, 6:60}

# Concatenating dictionaries
#
#Concatenation: The line new_dict = {**dic1, **dic2, **dic3} uses 
# dictionary unpacking to concatenate the dictionaries into a new dictionary new_dict.
new_dict = {**dict1, **dict2, **dict3}
print(new_dict)




"""""
Q. Write a Python script to check whether a given key (10) already exists in a
dictionary.
Input: 1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}
Output:” Key 10 is not present in the dictionary”
"""
Input = {1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60}
key_to_check = 10
if key_to_check in Input:
    print("Key 10 is not present in the dictionary")
else:
    print("Key 10 is not present in the dictionary")




"""""
Q. Write a Python program to remove a key(age) from a dictionary.
Input:
'name': 'John Doe',
'age': 30,
'occupation': 'Software Engineer',
'email': 'john@example.com',
'is_employed': True
}
Output:
'name': 'John Doe',
'occupation': 'Software Engineer',
'email': 'john@example.com',
'is_employed': True
}
"""
dict1 = {
    'name': 'John Doe',
    'age': 30,
    'occupation': 'Software Engineer',
    'email': 'john@example.com',
    'is_employed': True
}

del dict1['age']
print(dict1)


"""""
Q. Write a Python program to remove duplicates from the dictionary.
Input: {'a': 1, 'b': 2, 'c': 1, 'd': 3, 'e': 2, 'f': 4}
Output: {'a': 1, 'b': 2, 'd': 3, 'f': 4}
"""
#To remove duplicates from a dictionary, you need to ensure that each key maps to a unique value. 
# Since dictionaries inherently do not allow duplicate keys, the focus is usually on removing duplicate values. 
my_dict = {'a': 1, 'b': 2, 'c': 1, 'd': 3, 'e': 2, 'f': 4}

# Removing duplicates
values = set()
unique_dict = {}
for key, value in my_dict.items():
    if value not in values:
        values.add(value)
        unique_dict[key] = value


print("Original dictionary:", my_dict)
print("Dictionary after removing duplicates:", unique_dict)




"""""
Q. Write a Python program to get the maximum and minimum values of a
dictionary.
Input: {'u':1000,'v':3000,'x':500, 'y':5874, 'z': 560}
Output:
Maximum Value: 5874
Minimum Value: 500
"""
# # Use the max() and min() functions to find the maximum and minimum values
Input = {'u':1000,'v':3000,'x':500, 'y':5874, 'z': 560}
print("Maximum Value = ", max(Input.values()))
print("Minimum Value = ", min(Input.values()))


"""""
Q. Write a Python program to check if a dictionary is empty or not.
Input: my_dict = {}
Output: ”Dictionary is Empty”
"""
my_dict = {}
if not my_dict:
    print("Dictionary is Empty")
else:
    print("Dictionary is not Empty")


"""""
Q. Write a Python program to create a dictionary of keys x, y, and z where each
key has as value a list from 11-20, 21-30, and 31-40 respectively. Access the
fifth value of each key from the dictionary.
Input:
{'x': [11, 12, 13, 14, 15, 16, 17, 18, 19],
'y': [21, 22, 23, 24, 25, 26, 27, 28, 29],
'z': [31, 32, 33, 34, 35, 36, 37, 38, 39]}
Output:
15
25
30
"""
dict1 = {
    'x': [11, 12, 13, 14, 15, 16, 17, 18, 19],
    'y': [21, 22, 23, 24, 25, 26, 27, 28, 29],
    'z': [31, 32, 33, 34, 35, 36, 37, 38, 39]}

# will access 4th element of each key
X_value = dict1['x'][4]
Y_value = dict1['y'][4]
Z_value = dict1['z'][4]
print("5th Value of X key = ", X_value)
print("5th Value of Y key = ", Y_value)
print("5th Value of Z key = ", Z_value)





"""""
Q. Write a Python program to drop empty items from a given dictionary.
Input: {'c1': 'Red', 'c2': 'Green', 'c3': None}
Output: {'c1': 'Red', 'c2': 'Green'}
"""
# Use a dictionary comprehension to remove empty items (None values) from the dictionary
# The dictionary comprehension {key: value for key, value in input_dict.items() if value is not None} 
# creates a new dictionary output_dict that includes only the items with non-None values.
input_dict = {'c1': 'Red', 'c2': 'Green', 'c3': None}
# Dropping empty items
output_dict = {key: value for key, value in input_dict.items() if value is not None}
print("Input:", input_dict)
print("Output:", output_dict)





"""""
Q. Write a Python program to filter a dictionary based on values > 170
Input : {'Cierra Vega': 175, 'Alden Cantrell': 180, 'Kierra Gentry': 165, 'Pierre
Cox': 190}
Output : {'Cierra Vega': 175, 'Alden Cantrell': 180, 'Pierre Cox': 190}
"""
my_dict = {'Cierra Vega': 175, 'Alden Cantrell': 180, 'Kierra Gentry': 165, 'Pierre Cox': 190}
# Use a dictionary comprehension to filter based on values > 170
output_dict = {key: value for key, value in my_dict.items() if value > 170}
print(output_dict)



"""""
Q. Write a Python program to verify that all values in a dictionary are the same.
Input: {'Cierra Vega': 12, 'Alden Cantrell': 12, 'Kierra Gentry': 12, 'Pierre Cox':
12}
Output: “ All values are 12”
"""
my_dict = {'Cierra Vega': 12, 'Alden Cantrell': 12, 'Kierra Gentry': 12, 'Pierre Cox': 12}
# Verify that all values are the same
all_values = list(my_dict.values())
if all(value == all_values[0] for value in all_values):
    print(f"All values are {all_values[0]}")
else:
    print("All values are not same")






"""""
Q. Write a Python program to convert string values of a given dictionary into integer/float data types.
INPUT: [{'x': '10', 'y': '20', 'z': '30'}, {'p': '40', 'q': '50', 'r': '60'}]
OUTPUT:
String values of a given dictionary, into integer types:
[{'x': 10, 'y': 20, 'z': 30}, {'p': 40, 'q': 50, 'r': 60}]
String values of a given dictionary, into float types:
[{'x': 10.12, 'y': 20.23, 'z': 30.0}, {'p': 40.0, 'q': 50.19, 'r': 60.99}]
"""
dict1 = [{'x': '10', 'y': '20', 'z': '30'}, {'p': '40', 'q': '50', 'r': '60'}]

output = [{key: int(value) for key, values in d.items()} for d in dict1]
print("String values of a given dictionary, into integer types: ", output)

output = [{key: float(value) for key, values in d.items()} for d in dict1]
print("String values of a given dictionary, into float types: ", output)



"""""
Q. Write a Python program to filter even numbers from a dictionary of values.
INPUT: {'V': [1, 4, 6, 10], 'VI': [1, 4, 12], 'VII': [1, 3, 8]}
OUTPUT: {'V': [4, 6, 10], 'VI': [4, 12], 'VII': [8]}
"""
dict1 = {'V': [1, 4, 6, 10], 'VI': [1, 4, 12], 'VII': [1, 3, 8]}
# Use dictionary comprehension to filter even numbers from the dictionary
output_dict = {key: [num for num in value if num % 2 == 0] for key, value in dict1.items()}
print(output_dict)





"""""
                                                STRING
"""

"""""
Q. Write a Python program to count the number of characters (character frequency) in a string.
INPUT: google.com
OUTPUT: {'g': 2, 'o': 3, 'l': 1, 'e': 1, '.': 1, 'c': 1, 'm': 1}
"""
Input = 'google.com'
output = {char: Input.count(char) for char in set(Input)}

print(output)



"""""
Q. Write a Python program to get a string made of the first 2 and last 2
characters of a given string. If the string length is less than 2, return the empty
string instead.
INPUT: 'w3resource'
OUTPUT : 'w3ce'
INPUT: 'w3'
OUTPUT: 'w3w3'
"""
Input = 'w3resource'
# Use slicing to get the first 2 and last 2 characters
output_string = Input[:2] + Input[-2:] if len(Input) >= 2 else " "
print(output_string)








"""""
Q. Write a Python program to remove the 5th index character from a nonempty
string.
INPUT:'Pythonplk'
OUTPUT: Pytho
"""
#   Input[:5] slices the string from the start up to (but not including) the 5th index. For Input = 'python', Input[:5] gives 'pytho'. 
# Input[6:] slices the string from the 6th index to the end. For Input = 'python', Input[6:] gives an empty string '' 
# because there are no characters after the 6th index.
Input = 'pythonplk'
# Use slicing to remove the 5th index character
output_string = Input[:5] + Input[6:]
print(output_string)



"""""
Q. Write a Python program to count the occurrences of each word in a given
sentence.
INPUT: 'the quick brown fox jumps over the lazy dog.'
OUTPUT: {'the': 2, 'jumps': 1, 'brown': 1, 'lazy': 1, 'fox': 1, 'over': 1, 'quick': 1, 'dog.': 1}
"""
#   set(words) creates a set of unique words from the list words. A set automatically removes duplicates:
#   words.count(word) counts the occurrences of each word in the list words. 
# {word: words.count(word) for word in set(words)} creates a dictionary where each key is a unique word 
# and its value is the count of that word in the list words.

input_sentence = 'the quick brown fox jumps over the lazy dog.'
# Use dictionary comprehension to count word occurrences
words = input_sentence.split()
output_dict = {word: words.count(word) for word in set(words)}
print(output_dict)





"""""
Q. Write a Python function to insert a string in the middle of a string.
INPUT: '[[]]', 'Python')
OUTPUT: [[Python]]
"""
#   We create the output string by concatenating three parts: 

# wrapper[:middle_index]: This slices the wrapper string from the start up to (but not including) the middle index. 
# For wrapper = '[[]]', wrapper[:2] gives '[['. 
# word: This is the string 'Python' that we want to insert. 
# wrapper[middle_index:]: This slices the wrapper string from the middle index to the end. For wrapper = '[[]]', wrapper[2:] gives ']]. 
# So, the concatenation results in '[[' + 'Python' + ']]', which is '[[Python]]'.

wrapper = '[[]]'
word = 'Python'

# Calculate the middle index of the wrapper string
middle_index = len(wrapper) // 2

# Insert the word into the middle of the wrapper string
output = wrapper[:middle_index] + word + wrapper[middle_index:]

print(f"Input: '{wrapper}', '{word}'")
print(f"Output: '{output}'")






"""""
Q. Write a Python function to reverse a string if its length is a multiple of 4.
INPUT:'python'
OUTPUT:'nohtyp'
"""
Input = 'python'
output = Input[::-1] if len(Input) % 4 == 0 else Input
print(output)




"""""
Q. Write a Python program to check whether a string starts with specified
characters (grow)
INPUT:” growdataskills”
OUTPUT: TRUE
"""
input_string = "growdataskills"
specified_characters = "grow"
output_bool = input_string.startswith(specified_characters)
print(output_bool)





"""""
Q. Write a Python program to reverse words in a string.
INPUT: "The quick brown fox jumps over the lazy dog."
OUTPUT: “dog. lazy the over jumps fox brown quick The”
"""
input_string = "The quick brown fox jumps over the lazy dog."
words = input_string.split()
output_string = ' '.join(reversed(words))
print(output_string)





"""
Q. Write a Python program to check whether a string contains all letters of the
alphabet.
INPUT: 'The quick brown fox jumps over the lazy cat
OUTPUT:FALSE
"""
input_string = 'The quick brown fox jumps over the lazy cat'
alphabet = set('abcdefghijklmnopqrstuvwxyz')
output_bool = set(input_string.lower()) >= alphabet
print(output_bool)






"""
Q. Write a Python program to count and display vowels in text.
INPUT: resource
OUTPUT: 4 -> ['e', 'o', 'u', 'e']
"""
input_text = 'resource'
vowels = 'aeiou'
# Counting and collecting vowels
vowel_list = [char for char in input_text if char in vowels]
vowel_count = len(vowel_list)

print(vowel_count, '->', vowel_list)
