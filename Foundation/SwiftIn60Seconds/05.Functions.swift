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
