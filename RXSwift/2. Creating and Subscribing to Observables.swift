import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let numberSequence = Observable.just(5) // "just" means just this thing
let numberSubscription = numberSequence.subscribe(onNext: {
    print($0)
    })

let helloSequence = Observable.from(["X", "i", "a", "n", "we love you", "from Mom and Dad_^"])
let helloSubscription = helloSequence.subscribe { (event) in
    switch event {
    case .next(let value):
        print(value)
    case .error(let error):
        print(error)
    case .completed:
        print("Completed")
    }
}

