/*

*/

// Basic Switch sample:
let name = "twostraws"
switch name {
case "bilbo":
print("Hello, Bilbo Baggins!")
case "twostraws":
print("Hello, Paul Hudson!")
default:
print("Authentication failed")
}

// If two values:
let name = "twostraws"
let password = "fr0st1es"
switch (name, password) {
case ("bilbo", "bagg1n5"):
print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es"):
print("Hello, Paul Hudson!")
default:
print("Who are you?")
}

// You can combine the two values into a single tuple if you prefer, like this:
let authentication = (name: "twostraws", password: "fr0st1es")

switch authentication {
case ("bilbo", "bagg1n5"):
print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es"):
print("Hello, Paul Hudson!")
default:
print("Who are you?")
}

/* 
In this instance, both parts of the tuple must match the case in order for it to be executed.
When working with tuples, there are some occasions when you want a partial match: you
care what some values are but don't care about others. In this situation, use underscores to
represent "any value is fine", like this:
*/

let authentication = (name: "twostraws", password: "fr0st1es", ipAddress: "127.0.0.1")
switch authentication {
case ("bilbo", "bagg1n5", _):
print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es", _):
print("Hello, Paul Hudson!")
default:
print("Who are you?")
}

// Finally, if you want to match only part of a tuple, but still want to know what the other part
was, you should use let syntax.

let authentication = (name: "twostraws", password: "fr0st1es")

switch authentication {
case ("bilbo", _):
print("Hello, Bilbo Baggins!")
case ("twostraws", let password):
print("Hello, Paul Hudson: your password was \(password)!")
default:
print("Who are you?")
}

/*
That outlines the basic range of pattern-matching syntax that most developers use. From
here on I want to give examples of other useful pattern-matching techniques that are less
well known.
*/

