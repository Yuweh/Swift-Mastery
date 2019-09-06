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
Swift has operators for doing arithemetic and for comparison;
they mostly work like you already know.

*/
// Example:
 let total = firstScore + secondScore
 let difference = firstScore - secondScore
 let product = firstScore * secondScore
 let divided = firstScore / secondScore


//====================================================================================
* Operator overloading

/*
*/
// Example:


//====================================================================================
* Compound assignment operators

/*
There are compound variants of arithmethic operators 
that modify their variables in place: +=, -=, and so on.
*/
// Example:
 var score = 95
 score -= 5

//====================================================================================
* Comparison operators

/*
*/
// Example:


//====================================================================================
* Conditions

/*
 You can use if, else, and else if to run code based on the result of a condition
*/
// Example:
if firstCard + secondCard == 21 {
 print("Black Jack")
} else {
 print("Regular Cards")
}

//====================================================================================
* Combining operators

/*
*/
// Example:


//====================================================================================
* The ternary operator

/*
Swift has a ternary operator that combines a check with true and false code blocks. 
Although you might see it in other code, not recommended using it
*/
// Example:
let 1sthand = 11
let 2ndhand = 10

print(firsthand == secondhand ? "same" : "not")

//====================================================================================
* Switch statements

/*
If you have multiple conditions using the same value,
use switch for clarity
*/
// Example:
switch weather {
 case "rain":
 
 case "sunny":
 
 default:
}


//====================================================================================
* Range operators
/*

You can make ranges using ..< and ... depending on
whether the last number should be excluded or included.

*/
// Example:
switch score {
 case 0..<50:
 
 case 50..<85:
 
 default:
}

//====================================================================================
 
4 - Looping summary
// Loops let us repeat code until a condition is false.

* For loops
/*
The most common loop is "for loop",
which assigns each item inside the loop to a temporary constant.
*/
// Example:
for number in count {
 print("Number is \(number)")
}

// If you don't need the temporary constant that for loops give
//use an underscore instead so Swift can skip that work.
// Example:
for _ in count {
 print("Number is \(number)")
}

//====================================================================================
* While loops

/*
There are while loops, which you provide with an explicit condition to check.
*/
// Example:
while number <= 20 {
 print(number)
 number +=1
}

//====================================================================================
* Repeat loops

/*
Similar with while loops, repeat loops always run the body of their loop at least once.
*/
// Example:
repeat {
 print(number)
 number += 1
} while number <= 20

//====================================================================================
* Exiting loops

/*
 You can exit a single loop using break, but if you have nested loops 
you need to use break followed by whatever label you place
before your outer loop
*/
// Example:
if countDown == 4 {
 print("I'm out")
 break
}

//====================================================================================
* Exiting multiple loops

/*
*/
// Example:


//====================================================================================
* Skipping items

/*
You can skip items in a loop using continue

*/
// Example:
for i in 1...10 {
 if i % 2 == 1 {
  continue
 }
 print(i)
}

//====================================================================================
* Infinite loops

/*
Infinite loops don't end until you ask them to, and are made using "while true"
Make sure you have a condition somewhere to end your infinite loop
*/
// Example:
while true {
 print(" - - -")
 counter += 1
 if counter == 273 {
  break
 }
}

//====================================================================================
5 - Functions summary
//====================================================================================
* Writing functions

/*
Functions let us re-use code without repeating ourselves
*/
// Example:
func printHelp() {
 let message = "Welcome to myApp"
 print(message)
}


//====================================================================================
* Accepting parameters

/*
Functions can accept parameters - just tell Swift the type of each parameter
*/
// Example:
func square(number: Int) {
 print(number * number)
}

//====================================================================================
* Returning values
/*
Functions can return values, and again you just specify what type will be sent back.
Use tuples if you want to return several things.
*/
// Example:
func square(number: Int) -> Int {
 return numbber * number
}

//====================================================================================
* Parameter labels

/*
You can use different names for parameters externally and internally, or
omit the external name entirely.
*/
// Example:
func sayHello(to name: String) {
 print("Hello, \(name)!")
}

//====================================================================================
* Omitting parameter labels

/*

You can use different names for parameters externally and internally, or
omit the external name entirely.
*/
// Example:


//====================================================================================
* Default parameters
/*
Parameters can have default values, which helps you write less code when
specific values are common.
*/
// Example:
func greet(_ person: String = "Taylor") {
 print("Hello, \(person)!")
}

//====================================================================================
* Variadic functions

/*
Variadic functions accept zero or more of a specific parameter,
and Swift converts the input to an array.
*/
// Example:
func square(numbers: Int...) {
 for number in numbers {
  let product = numbber * number 
  print("\(number) square is \(product)")
 }
}

//====================================================================================
* Writing throwing functions

/*

Functions can throw errors, but you must call them using try
and handle errors using catch
*/
// Example:
do {
 try checkPassword("password")
 print("That password is good!")
} catch {
 print("You can't use that password.")
}
//====================================================================================
* Running throwing functions

/*

Functions can throw errors, but you must call them using try
and handle errors using catch
*/
// Example:


//====================================================================================
* in-out parameters

/*

 You can use inout to change variabble inside a function,
but it's usually better to return a new value.
*/
// Example:
func doubleInPlace(number: inout Int) {
 number *= 2
}

//====================================================================================
6 - Closures summary
//====================================================================================
* Creating basic closures
/*
You can assign closures to variables, then call them later on.
*/
// Example:
let driving = {
 print("I'm driving in my car")
}

//====================================================================================
* Accepting parameters in a closure
/*
Closures can accept parameters and return values, like regular functions.
*/
// Example:
let driving = { (place: String) in
               print("I'm going to \(place) in my car")
              }

//====================================================================================
* Returning values from a closure
/*
Closures can accept parameters and return values, like regular functions.
*/
// Example:


//====================================================================================
* Closures as parameters
/*

You can pass closures into functions as parameters, and those
closures can have parameters of their own and a return value
*/
// Example:
func travel(action: () -> Void) {
 print("I'm getting ready to go.")
 action()
 print("I arrived!")
}

//====================================================================================
* Trailing closure syntax
/*
If the last parameter to your function is a closure,
you can use trailing closure syntax.
*/
// Example:
travel {
 print("I'm driving in my car")
}

//====================================================================================
* Using closures as parameters when they accept parameters
/*

You can pass closures into functions as parameters, and those
closures can have parameters of their own and a return value
*/
// Example:


//====================================================================================
* Using closures as parameters when they return values
/*

You can pass closures into functions as parameters, and those
closures can have parameters of their own and a return value
*/
// Example:


//====================================================================================
* Shorthand parameter names
/*
Swift automatically provides shorthand parameter names like $0 and $1,
but not everyone uses them.
*/
// Example:
travel {
 "I'm going to \($0) in my car"
}

//====================================================================================
* Closures with multiple parameters
/*
*/
// Example:


//====================================================================================
* Returning closures from functions
/*
*/
// Example:


//====================================================================================
* Capturing values
/*
If you use external values inside your closures, they will be captured
so the closure can refer to them later.
*/
// Example:
func travel() -> (String) -> Void {
 var counter = 1
 return {
  print("\(counter). I'm going to \($0)")
  counter += 1
 }
}

//====================================================================================
 
7 - Structs summary
* Creating your own structs
/*
You can create your own types using structures, 
which can have their own properties and methods.
*/
// Example:
struct Sport {
 var name: String
}

//====================================================================================
* Computed properties
/*
You can use stored properties or use
computed properties to calculate values on the fly.
*/
// Example:
var olympicStatus: String {
 if isOlympicSport {
  return "\(name) is an Olympic sport"
 } else {
  return "\(name) is not an Olympic sport"
 }

//====================================================================================
* Property observers
/*
*/
// Example:


//====================================================================================
* Methods
/*
*/
// Example:


//====================================================================================
* Mutating methods
/*
 If you want to change a propery inside a method,
 you must mark it as mutating
*/
// Example:
mutating func makeAnonymous() {
 name = "Anonymous"
}

//====================================================================================
* Properties and methods of strings
/*
*/
// Example:


//====================================================================================
* Properties and methods of arrays
/*
*/
// Example:


//====================================================================================
* Initializers
/*
 Initializers are special methods that create structs.
 You get a memberwise initializer by default, but if you create your own
 you must give all properties a value
*/
// Example:
init() {
 username = "Anonymous"
 print("Creating a new user!")

//====================================================================================
* Referring to the current instance
/*
 Use the self constant to refer to the current instance of a struct inside a method
*/
// Example:
init(name: String) {
 print("\(name) was born!")
 self.name = name
}

//====================================================================================
* Lazy properties
/*
 The lazy keyword tells Swift to create properties only when they are first used.
*/
// Example:
struct Person {
 var name: String
 lazy var familyTree = FamilyTree()
}

//====================================================================================
* Static properties and methods
/*
 You can share properties and methods across all instances
 of a struct using the static keyword
*/
// Example:
struct Student {
 static var classSize = 0
 var name: String
}

//====================================================================================
* Access control
/*
 Access control lets you restrict what code can use properties and methods
*/
// Example:
struct Person {
 private var id: String
 init(id: String) {
  self.id = id
 }
}

//====================================================================================
 
8 - Classes summary
//====================================================================================
* Creating your own classes
/*
 Classes and structs are similar, in that they can both let you create
 your own types and with properties and methods.
*/
// Example:
class Dog {
 var name: String
 init(name: String) {
  self.name = name
 }
}


//====================================================================================
* Class inheritance
/*
 One class can inherit from another, and it gains all properties and methods of the parent class.
 It's common to talk about class hierachies - one class based on another,
 which itself is based on another.
*/
// Example:
class Poodle: Dog {
 init(name: String_ {
  super.init(name: name)
 }
     }

//====================================================================================
* Overriding methods
 /*
 Method overriding lets a child class replace a method in its parent class
 with a new implementation
*/
// Example:
class Poodle: Dog {
 override func makeNoise() {
  print("Yip)
       }
 }

//====================================================================================
* Final classes
/*
 You can mark a class with the finaly keyword,
 which stops other classes from inheriting from it.
*/
// Example:
final class Dog {
 var name: String
 init(name: String) {
  self.name = name
 }
}

//====================================================================================
* Copying objects
/*
 When two variables point at the same class instance,
 they both point at the same piece of memory - 
 changing one changes the other.
*/
// Example:
var singerCopy = singer
 singerCopy.name = "Justin Bieber"
 print(singer.name)

//====================================================================================
* Deinitializers
/*
 Classes can have a deinitializer, which code that gets run
 when an instance of the class is destroyed
*/
// Example:
deinit {
 print("\(name) is no more!")
}

//====================================================================================
* Mutability
/*
 
 Classes don't enforce constants as strongly as structs -
 if a property is declared as a variable, it can be changed.
 regardless ofhow the class instance was created.
 
*/
// Example:
class Singer {
 var name = "Taylor Swift"
}
 let taylor = Singer()
 taylor.name = "Ed Sheeran"

//====================================================================================
 
9 - Protocols and extensions summary
* Protocols
/*
 Protocols describe what methods and properties a conforming type must have,
 but don't provide the implementations of those methods.
*/
// Example:
protocol Identifiable {
 var id: String { get set }
}

//====================================================================================
* Protocol inheritance
/*
 You can build protocols on top of other protocols,
 similar to classes
*/
// Example:
protocol Employee: Payable, HasVacation { }

//====================================================================================
* Extensions
/*
 Extensions let you add methods and computed properties to specific types such as Int.
*/
// Example:
extension Int {
 func squared() -> Int {
  return self * self 
 }
}

//====================================================================================
* Protocol extensions
/*
 Protocol extensions let you add methods and computed properties to protocols
*/
// Example:
extension Collection {
 func summarize() {
  print("There are \(count) of us:")
  for name in self {
   print(name)
  }
 }
}

//====================================================================================
* Protocol-oriented programming
/*
 Protocol-oriented programming is the practice of designing your app architecture
 as a series of protocols, then using protocol extensions to provide default method implementations
*/
// Example:
extension Identifiable {
 func identity() {
  print("My ID is \(id).")
 }
}

//====================================================================================
10 - Optionals summary
* Handling missing data
/*
 Optionals let us represent the absence of a value in a clear and umabiguous way.
*/
// Example:
var age: Int? = nil
 age = 38

//====================================================================================
* Unwrapping optionals
/*
 Swift won't let us use optionals without unwrapping them,
 either using if let or using guard let.
*/
// Example:
if let unwrapped = name {
 print("\(unwrapped.count) letters")
} else {
 print("Missing name.)
      }
//====================================================================================
* Unwrapping with guard
/*
*/
// Example:

//====================================================================================
* Force unwrapping

/*
 You can force unwrap optionals with an exclamation mark,
 but if you try to force unwrap nil your code will crash.
*/
// Example:
let str = "5"
 let num = Int(str)!

//====================================================================================
* Implicitly unwrapped optionals
/*
*/
// Example:


//====================================================================================
* Nil coalescing
/*
 You can use nil coalescing to unwrap an optional and
 provide a default value if there was nothing inside.
*/
// Example:
let user = username(for:15) ?? "Anonymous"

//====================================================================================
* Optional chaining
/*
 Optional chaining let us write code to manipulate an optional,
 but if the optional turns out to be empty the code is ignored.
*/
// Example:
let beatle = names.first?.uppercased()

//====================================================================================
* Optional try
/*
 You can use try? to convert a throwing function into an optional
 return value, or try! to crash if an error is thrown.
*/
// Example:
if let result = try? checkPassowrd("sekrit") {
 print("Result was \(result)")
} else {
 print("D'oh")
}

//====================================================================================
* Failable initializers
/*
 If you need your initializer to fail when it's given bad input,
 use init?() to make a failable initializer.
*/
// Example:
init?(id: String) {
 if id.count == 9 {
  self.id = id
 } else {
  return nil
 }
}

//====================================================================================
* Typecasting
/*
 You can use typecasting to convert one type of object to another
*/
// Example:
for pet in pets {
 if let dog = pet as? Dog {
  dog.makeNoise()
 }
}

//====================================================================================
