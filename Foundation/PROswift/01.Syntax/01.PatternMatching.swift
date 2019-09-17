/*

*/

// Basic Switch sample:
let name = "twostraws"
switch name {
case "bilbo":
print("Hello, Bilbo Baggins!")
case "twostraws":
print("Hello, Paul Hudson!")
default:
print("Authentication failed")
}

// If two values:
let name = "twostraws"
let password = "fr0st1es"
switch (name, password) {
case ("bilbo", "bagg1n5"):
print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es"):
print("Hello, Paul Hudson!")
default:
print("Who are you?")
}

// You can combine the two values into a single tuple if you prefer, like this:
let authentication = (name: "twostraws", password: "fr0st1es")

switch authentication {
case ("bilbo", "bagg1n5"):
print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es"):
print("Hello, Paul Hudson!")
default:
print("Who are you?")
}

/* 
In this instance, both parts of the tuple must match the case in order for it to be executed.
When working with tuples, there are some occasions when you want a partial match: you
care what some values are but don't care about others. In this situation, use underscores to
represent "any value is fine", like this:
*/

let authentication = (name: "twostraws", password: "fr0st1es", ipAddress: "127.0.0.1")
switch authentication {
case ("bilbo", "bagg1n5", _):
print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es", _):
print("Hello, Paul Hudson!")
default:
print("Who are you?")
}

// Finally, if you want to match only part of a tuple, but still want to know what the other part
was, you should use let syntax.

let authentication = (name: "twostraws", password: "fr0st1es")

switch authentication {
case ("bilbo", _):
print("Hello, Bilbo Baggins!")
case ("twostraws", let password):
print("Hello, Paul Hudson: your password was \(password)!")
default:
print("Who are you?")
}

/*
That outlines the basic range of pattern-matching syntax that most developers use. From
here on I want to give examples of other useful pattern-matching techniques that are less
well known.
*/




//=========================================================================================
// Matching calculated tuples
//=========================================================================================
// Tuples are most frequently created using static values, like this:
let name = ("Paul", "Hudson")

//=========================================================================================
/*
Example, consider the "fizzbuzz" test: write a function that accepts
any number, and returns "Fizz" if the number is evenly divisible by 3, "Buzz" if it's evenly
divisible by 5, "FizzBuzz" if its evenly divisible by 3 and 5, or the original input number in
other cases.

We can calculate a tuple to solve this problem, then pass that tuple into a switch block to
create the correct output. Here's the code:
*/

func fizzbuzz(number number: Int) -> String {
switch (number % 3 == 0, number % 5 == 0) {
case (true, false):
return "Fizz"
case (false, true):
return "Buzz"
case (true, true):
return "FizzBuzz"
case (false, false):
return String(number)
}
}

//test
print(fizzbuzz(number: 15))

/*
This approach breaks down a large input space – any number – into simple combinations of
true and false, and we then use tuple pattern matching in the case statements to select the
correct output.
*/

 //=========================================================================================
 
 //=========================================================================================
// LOOPS
//=========================================================================================

// Basic Ex:
let twostraws = (name: "twostraws", password: "fr0st1es")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0st1es")

let users = [twostraws, bilbo, taylor]

for user in users {
print(user.name)
}

/*
That creates an array of tuples, then loops over each one and prints its name value.
Just like the switch blocks we looked at earlier, we can use case with a tuple to match
specific values inside the tuples. Add this code below the previous loop:
*/ 
 
//=========================================================================================
// Matching optionals
//=========================================================================================
 
 // sample:
let name: String? = "twostraws"
let password: String? = "fr0st1es"

switch (name, password) {
case let (.Some(name), .Some(password)):
print("Hello, \(name)")
case let (.Some(name), .None):
print("Please enter a password.")
default:
print("Who are you?")
}


