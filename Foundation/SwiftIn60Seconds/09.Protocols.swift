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
