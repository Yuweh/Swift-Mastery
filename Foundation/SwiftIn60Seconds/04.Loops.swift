//====================================================================================
 
4 - Looping summary
// Loops let us repeat code until a condition is false.
* For loops
/*
The most common loop is "for loop",
which assigns each item inside the loop to a temporary constant.
*/
// Example:
for number in count {
 print("Number is \(number)")
}

// If you don't need the temporary constant that for loops give
//use an underscore instead so Swift can skip that work.
// Example:
for _ in count {
 print("Number is \(number)")
}

//====================================================================================
* While loops

/*
There are while loops, which you provide with an explicit condition to check.
*/
// Example:
while number <= 20 {
 print(number)
 number +=1
}

//====================================================================================
* Repeat loops

/*
Similar with while loops, repeat loops always run the body of their loop at least once.
*/
// Example:
repeat {
 print(number)
 number += 1
} while number <= 20

//====================================================================================
* Exiting loops

/*
 You can exit a single loop using break, but if you have nested loops 
you need to use break followed by whatever label you place
before your outer loop
*/
// Example:
if countDown == 4 {
 print("I'm out")
 break
}

//====================================================================================
* Exiting multiple loops

/*
*/
// Example:

//====================================================================================
* Skipping items

/*
You can skip items in a loop using continue
*/
// Example:
for i in 1...10 {
 if i % 2 == 1 {
  continue
 }
 print(i)
}

//====================================================================================
* Infinite loops

/*
Infinite loops don't end until you ask them to, and are made using "while true"
Make sure you have a condition somewhere to end your infinite loop
*/
// Example:
while true {
 print(" - - -")
 counter += 1
 if counter == 273 {
  break
 }
}

//====================================================================================
