Prologue: Swift in 60 seconds

//====================================================================================
1 - Simple types: Summary
//====================================================================================

* Variables
/*
they are called variable because they can vary.
We can change their values freely.

You make variables using var and constants using let.
It's preferable to use constants as often as possible.

*/
// Example:

var str = "Hello, playground"
str = "Hi Playground"
//====================================================================================
* Strings and integers
/*
 Swift is a type safe language
 which means every variable is identified as one specific type.
*/
// Example:
var str = "Hello, playground"
var age = 38
var population = 8_000_000

//====================================================================================
* Multi-line strings
/*
Used of multi-line strings.
Strings start and end with double quotes (" like this "),
but if you want them to run across multiple lines you should use three sets of double quotes

*/
// Example:

var str1 = """
hello
world,
said Playgrounds
"""

//that's it xD

//====================================================================================
* Doubles and booleans

/*
 Swift automatically recognize the value and assign it in a type.

Integers hold whole numbers.
Doubles hold fractional numbers
and Booleans hold true or false.
*/
// Example:
var pi = 3.134
var awesome = true

//====================================================================================
* String interpolation

/*
String interpolation allows you to create strings from other variables and constants,
placing their values inside your string.
*/
// Example:
var score = 85
var str = "You score was \(score)"
var resultChecker = score > 75 ?? passed : failed //my own example XD
var results = "You have \(resultChecker)"

//====================================================================================
* Constants

/*
 values that don't change are constant.
The only constant in this world is change XD
*/
// Example: 
let taylor = "swift"

//====================================================================================
* Type annotations

/*
 Swift uses type inference to assign each variable or constant a type,
but you can provide explicit types if you want.
*/
// Example:

let str = "Hello, playground"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

//====================================================================================

//==================================================================================== 
2 - Complex types: Summary

/*

Arrays, sets, tuples, and dictionaries let you store a group of items under a single value.
They each do this in different ways, so which you use depends on the behavior you want.

*/

//====================================================================================
* Arrays

/*

Arrays store items in the order you add them, and you access them using numerical positions.

*/
// Example:
let john = "John Lennon"
let paul = "Paul mcCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo];
beatles[1]

//====================================================================================
* Sets

/*

Set store items without any order, so you can't access them using numerical positions.

*/
// Example:

let colors = Set(["red", "green", "blue"]) 
// when check on debug, they are not ordered.
// unlike arrays, they are not ordered and values cannot be repeated

//====================================================================================
* Tuples

/*

Tuples are fixed in size, and you can attach names to each of their items.
You can read items using numerical positions or using your names.

You can add several, different values in a single value
But cannot add or remove a value

*/
// Example:
var name = (first: "Taylor", last: "Swift")
name.0
name.first //"Taylor" also


//====================================================================================
* Arrays vs sets vs tuples

/*
If you need specific, fix collection of related values where each item has a precise position or name, you may use a TUPLE.

If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there,
extremely quicly issues a SET.

If you need a collection of values that can contain duplicates or the order of items matters, we should use an array

*/
// Example:

// Tuple
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//Set
let set = SET(["aardvark", "astronaut", "azalea"])

// Array
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//

//====================================================================================
* Dictionaries

/*
Key - Value

Dictionaries store items according to a key, and you can read items using those keys

*/
// Example:
let heigths = [
 "Taylor Swift": 1.78,
 "Ed Sheeran": 1.73
]

heights["Taylor Swift"] // returns 1.78
 

//====================================================================================
* Dictionary default values

/*
In case you read value using a key that doesn't exist, Swift will return NIL

*/
// Example:

let favoriteIceCream = [
"Paul": "Chocolate",
 "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

//====================================================================================
* Creating empty collections

/*

Arrays, Sets, and Dictionaries are called "Collections"
because they collect values together in once place

*/
// Example:

//create empty Dictionary
var team = [String: String]()
//add value
team["Paul"] = "Red"

//Array
var results = [Int]()

//Set
var words = Set<String>()
var numbers = Set<Int>()

//Alternative
var scores = Dictionary<String, Int>()
var results = Array<Int>


//====================================================================================
* Enumerations

/*

Enums are a way of grouping related values so you can use them without spelling mistakes

*/
// Example:
enum Result {
 case success
 case failure
}

var results = Result.success

//====================================================================================
* Enum associated values

/*
 using associated values gives precision on what activity is called for

Use associated values to store additional information about each case.
*/
// Example:

enum Activity {
 case bored
 case running(destination: String)
 case talking(topic: String)
 cae singing(volume: Int)
}

//====================================================================================
* Enum raw values

/*
You can attach raw values to enums so they can be created from integers or strings.
*/
// Example:

enum Planet: Int {
 case mercury = 1
 case venus
 case earth
 case mars
}
let earth = Planet(rawValue: 2) // ->Venus because starting count now is 1 instead of 0  

//====================================================================================
3 - Operators and conditions summary
//====================================================================================
* Arithmetic Operators

/*
*/
// Example:


//====================================================================================
* Operator overloading

/*
*/
// Example:


//====================================================================================
* Compound assignment operators

/*
*/
// Example:


//====================================================================================
* Comparison operators

/*
*/
// Example:


//====================================================================================
* Conditions

/*
*/
// Example:


//====================================================================================
* Combining operators

/*
*/
// Example:


//====================================================================================
* The ternary operator

/*
*/
// Example:


//====================================================================================
* Switch statements

/*
*/
// Example:


//====================================================================================
* Range operators
/*
*/
// Example:


//====================================================================================
 
4 - Looping summary
* For loops

/*
*/
// Example:


//====================================================================================
* While loops

/*
*/
// Example:


//====================================================================================
* Repeat loops

/*
*/
// Example:


//====================================================================================
* Exiting loops

/*
*/
// Example:


//====================================================================================
* Exiting multiple loops

/*
*/
// Example:


//====================================================================================
* Skipping items

/*
*/
// Example:


//====================================================================================
* Infinite loops
 
5 - Functions summary
* Writing functions
* Accepting parameters
* Returning values
* Parameter labels
* Omitting parameter labels
* Default parameters
* Variadic functions
* Writing throwing functions
* Running throwing functions
* in-out parameters


6 - Closures summary
* Creating basic closures
* Accepting parameters in a closure
* Returning values from a closure
* Closures as parameters
* Trailing closure syntax
* Using closures as parameters when they accept parameters
* Using closures as parameters when they return values
* Shorthand parameter names
* Closures with multiple parameters
* Returning closures from functions
* Capturing values
 
7 - Structs summary
* Creating your own structs
* Computed properties
* Property observers
* Methods
* Mutating methods
* Properties and methods of strings
* Properties and methods of arrays
* Initializers
* Referring to the current instance
* Lazy properties
* Static properties and methods
* Access control
 
8 - Classes summary
* Creating your own classes
* Class inheritance
* Overriding methods
* Final classes
* Copying objects
* Deinitializers
* Mutability
 
9 - Protocols and extensions summary
* Protocols
* Protocol inheritance
* Extensions
* Protocol extensions
* Protocol-oriented programming


10 - Optionals summary
* Handling missing data
* Unwrapping optionals
* Unwrapping with guard
* Force unwrapping
* Implicitly unwrapped optionals
* Nil coalescing
* Optional chaining
* Optional try
* Failable initializers
* Typecasting
