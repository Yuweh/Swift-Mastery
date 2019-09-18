// Guard

func giveAwardTo(name: String?) {
guard let winner = name else {
print("No one won the award")
return
}

print("Congratulations, \(winner)!")
}

/*
There's one last feature of guard I want to touch on, but it's not new. Instead, it's just a
different way of using what you already know. The feature is this: guard lets you exit any
scope if preconditions fail, not just functions and methods. This means you can exit a switch
block or a loop by using guard, and it carries the same meaning: the contents of this scope
should only be executed if these preconditions are true.
*/

//sample

for i in 1...100 {
guard i % 8 == 0 else { continue }

print(i)
}
