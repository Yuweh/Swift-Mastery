//Destructuring

/*
Destructuring (also known as decomposition) is a smart way to transfer data into and out
from tuples, and when you start to understanding it you'll realize how destructuring and
pattern matching are closely linked. 

Destructuring has three uses: pulling a tuple apart into
multiple values, assigning multiple things simultaneously, and switching values.
Consider this tuple:
*/

//sample
let data = ("one", "two", "three")

//If you want to create three different constants out of those three values, without destructuring you'd need to write this:
let one = data.0
let two = data.1
let three = data.2

//With destructuring you can write this:
let (one, two, three) = data


// usually asked on exams: Swapping A and B values w/o 3rd variable

//usual answer
var a = 10
var b = 20

a = a + b
b = a - b
a = a - b

print(a)
print(b)

//deconstruction answer
(b, a) = (a, b)







