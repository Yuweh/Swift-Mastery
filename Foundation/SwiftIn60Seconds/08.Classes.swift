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
