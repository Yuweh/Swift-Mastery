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
