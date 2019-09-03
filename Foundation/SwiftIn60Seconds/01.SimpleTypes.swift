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
