//Labeled Statements

/*
Labeled statements allow developers to label control statements. 
Here’s what a for loop would look like with a label:

*/

fancyLabel: for each in array {
    ...
}

//An if statement with a label looks very similar.

anotherLabel: if known == test {
    ...
}

//Lastly, a switch statement looks like this:

switchLabel: switch(myEnum) {
    ...
}

/*
labeled statements let you do is create early returns for your if statements. They run
normally, but at any time you feel necessary you can exit any conditional statement. For
example, we can rewrite the above pyramid into this:
*/

printing: if userRequestedPrint() {
if !documentSaved() { break printing }
if !userAuthenticated() { break printing }
if !connectToNetwork() { break printing }
if !uploadDocument("work.doc") { break printing }
if !printDocument() { break printing }

print("Printed successfully!")
}

// with use of guard
printing: if userRequestedPrint() {
guard documentSaved() else { break printing }
guard userAuthenticated() else { break printing }
guard connectToNetwork() else { break printing }
guard uploadDocument("work.doc") else { break printing }
guard printDocument() else { break printing }

print("Printed successfully!")
}


