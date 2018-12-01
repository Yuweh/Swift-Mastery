import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let disposeBag = DisposeBag()
let numberSequence = Observable.just(5) // "just" means just this thing
let numberSubscription = numberSequence.subscribe(onNext: {
    print($0)
}).disposed(by:disposeBag) //before it uses addDisposableTo(disposeBag): .addDisposableTo(disposeBag) -> said to be deprecated in favor of .disposed(by:)

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
}.disposed(by:disposeBag)
