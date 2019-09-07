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
