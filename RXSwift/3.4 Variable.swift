import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//disposeBag from memoy management
let disposeBag = DisposeBag()

/*
 Last subject to look at, which is a wrapper around another type of subject not a complete new one. It’s called a variable. What makes a variable special is that it is guaranteed to not terminate with an error. When a variable instance is about to be de-allocated it will automatically emit a completed event. We create a variable by passing an initial value to its initializer. Because the variable is a wrapper around the behavior subject, it will automatically replay only the last value to new subscribers.
 */

let variable = Variable("A")

variable.value = "B"

variable.asObservable()
    .subscribe { print($0) }
    .addDisposableTo(disposeBag)

variable.value = "C"

variable.asObservable()
    .subscribe { print("Second subscription:", $0) }
    .addDisposableTo(disposeBag)
