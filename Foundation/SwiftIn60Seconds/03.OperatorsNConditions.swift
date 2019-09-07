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
