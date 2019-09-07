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
