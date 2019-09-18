//Lazy Loading

/*
Lazy properties are the middle ground: they are properties that are calculated only once and
stored, but never calculated if they aren't used. So if your code uses a lazy property
repeatedly you only pay the performance cost once, and if they are never used then the code
is never run. It's a win-win!
*/

//sample 

class Singer {
let name: String

init(name: String) {
self.name = name
}

lazy var reversedName: String = {
return "\(self.name.uppercaseString) backwards is \
(String(self.name.uppercaseString.characters.reverse()))!"
}()
}

/*
Note: as it's now a property rather than a method, we need to use
print(taylor.reversedName) rather than print(taylor.reversedName()) to access the value.
That's it: the property is now lazy, which means the code inside the closure will be executed
only the first time we read the reversedName property.
*/


//Lazy functions

lazy var reversedName: String = self.getReversedName()

private func getReversedName() -> String {
return "\(self.name.uppercaseString) backwards is \
(String(self.name.uppercaseString.characters.reverse()))!"
}

//Lazy singletons
/*
The static part means this property is shared by the class rather than instances of
the class, meaning that you use Singer.musicPlayer rather than taylor.musicPlayer. The let
part of course means that it's a constant.
You might be wondering what all this has to do with lazy properties, and it's time to find out –
put this code into a playground:
*/

class MusicPlayer {
init() {
print("Ready to play songs!")
}
}

class Singer {
static let musicPlayer = MusicPlayer()

init() {
print("Creating a new singer")
}
}

let taylor = Singer()

/*
When it runs, the output is "Creating a new singer" – the "Ready to play songs!" message
won't appear. If you add one more line to the end of your playground, only then will the
message appear:

Singer.musicPlayer
*/

//Lazy Sequences

/*
Now that you understand lazy properties, I want to explain briefly the usefulness of lazy
sequences. These are similar to lazy properties in that they delay work until necessary, but
they aren't quite as efficient as you'll see shortly.

Let's start with a trivial example: the Fibonacci sequence. As a reminder, this is a sequence
of numbers starting with 0 and 1, where every following number is the sum of adding the
previous two. So the sequence goes 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on.

We can write a naïve function that calculates the Fibonacci number at a particular point in the
sequence like this:
*/

func fibonacci(num: Int) -> Int {
if num < 2 {
return num
} else {
return fibonacci(num - 1) + fibonacci(num - 2)
}
}

//usual
let fibonacciSequence = (0...20).map(fibonacci)
print(fibonacciSequence[10])

//suggested
let fibonacciSequence = (0...20).lazy.map(fibonacci)
print(fibonacciSequence[10])




