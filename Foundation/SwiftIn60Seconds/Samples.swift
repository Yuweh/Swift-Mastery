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
//====================================================================================
* Arrays

/*
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
*/
// Example:

let colors = Set(["red", "green", "blue"]) 
// when check on debug, they are not ordered.
// unlike arrays, they are not ordered and values cannot be repeated

//====================================================================================
* Tuples

/*

You can add several, different values in a single value
But cannot add or remove a value

*/
// Example:


//====================================================================================
* Arrays vs sets vs tuples


/*
*/
// Example:


//====================================================================================
* Dictionaries

/*
*/
// Example:


//====================================================================================
* Dictionary default values

/*
*/
// Example:


//====================================================================================
* Creating empty collections

/*
*/
// Example:


//====================================================================================
* Enumerations

/*
*/
// Example:


//====================================================================================
* Enum associated values

/*
*/
// Example:


//====================================================================================
* Enum raw values

/*
*/
// Example:


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
