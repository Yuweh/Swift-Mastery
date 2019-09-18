
//Nil Coalescing

/*
Swift optionals are one of the fundamental ways it guarantees program safety: a variable can
only be used if it definitely has a value. The problem is that optionals make your code a bit
harder to read and write, because you need to unwrap them safely.

One alternative is to explicitly unwrap optionals using !. This is also known as the "crash
operator" because if you use ! with an optional that is nil, your program will die immediately
and your users will be baying for blood.

A smarter alternative is the nil coalescing operator, ??, which allows you to access an
optional and provide a default value if the optional is nil.
*/

//sample
let name: String? = "Taylor"
let unwrappedName = name ?? "Anonymous"
print(unwrappedName)


/*
Remember, try has three variants: try attempts some code and might
throw an exception, try! attempts some code and crashes your app if it fails, and try?
attempts some code and returns nil if the call failed.
*/

//use this
let savedText = (try? String(contentsOfFile: "saved.txt")) ?? "Hello,
world!"

//instead of this because of try>?
do {
savedText = try String(contentsOfFile: "saved.txt")
} catch {
print("Failed to load saved text.")
savedText = "Hello, world!"
}

print(savedText)
















