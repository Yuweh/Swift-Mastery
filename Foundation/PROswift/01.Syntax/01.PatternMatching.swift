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
 
/*
Swift has two ways of matching optionals, and you're likely to meet both. First up is
using .Some and .None to match "has a value" and "has no value", and in the code below
this is used to check for values and bind them to local constants:
*/

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

// Matching ranges
/*
That produces identical results to the switch block while using similar syntax, but I'm not a
big fan of this approach. The reason for my dislike is simple readability: I don't think "if case
0 up to 18 equals age" makes sense if you don't already know what it means. A much nicer
approach is to use the pattern match operator, ~=, which would look like this:
*/

let age = 40

//sample
if 0 ..< 18 ~= age {
print("You have the energy and time, but not the money")
} else if 18 ..< 70 ~= age {
print("You have the energy and money, but not the time")
} else {
print("You have the time and money, but not the energy")
}

//alternative 
//(0 ..< 18).contains(age)

//combine this range matching into our existing tuple matching code, like this:
let user = (name: "twostraws", password: "fr0st1es", age: 36)

switch user {
case let (name, _, 0 ..< 18):
print("\(name) has the energy and time, but no money")
case let (name, _, 18 ..< 70):
print("\(name) has the money and energy, but no time")
case let (name, _, _):
print("\(name) has the time and money, but no energy")
}

//=========================================================================================
//Matching enums and associated values
//=========================================================================================

enum WeatherType {
case Cloudy(coverage: Int)
case Sunny
case Windy
}

let today = WeatherType.Cloudy(coverage: 100)

switch today {
case .Cloudy(let coverage) where coverage == 0:
print("You must live in Death Valley")
case .Cloudy(let coverage) where (1...99).contains(coverage):
print("It's cloudy with \(coverage)% coverage")
case .Cloudy(let coverage) where coverage == 100:
print("You must live in the UK")
case .Windy:
print("It's windy")
default:
print("It's sunny")
}


// is and where usage:

/*
You should already know the is keyword for matching, but you might not know that it can be
used as pattern matching in loops and switch blocks.

*/

let view: AnyObject = UIButton()

switch view {
case is UIButton:
print("Found a button")
case is UILabel:
print("Found a label")
case is UISwitch:
print("Found a switch")
case is UIView:
print("Found a view")
default:
print("Found something else")
}

// where

/*

*/
for label in view.subviews where label is UILabel {
print("Found a label with frame \(label.frame)")
}

let celebrities = ["Michael Jackson", "Taylor Swift", "Michael
Caine", "Adele Adkins", "Michael Jordan"]

for name in celebrities where !name.hasPrefix("Michael") {
print(name)
}

                   
                   
                   
                   
                   
                   
                   
                   

                   
                   
                   
                   
                   
                   





















