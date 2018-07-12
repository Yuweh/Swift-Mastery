

// Interesting Boolean Values 
// useful if used for CoreData


// You can just compare it to a boolean value:

if condition == true {
    ...
}

// Some test cases:

var testZero: NSNumber? = 0
var testOne: NSNumber? = 1
var testTrue: NSNumber? = true
var testNil: NSNumber? = nil
var testInteger: NSNumber? = 10

if testZero == true {
    // not true
}

if testOne == true {
    // it's true
}

if testTrue == true {
    // It's true
}

if testNil == true {
    // not true
}

if testInteger == true {
    // not true
}

