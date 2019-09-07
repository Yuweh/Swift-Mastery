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
