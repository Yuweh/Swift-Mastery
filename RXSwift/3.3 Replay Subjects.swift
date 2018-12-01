import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//disposeBag from memoy management
let disposeBag = DisposeBag()

/* Sometimes we want to replay more than the most recent emitted event by the source Observable to the new subscribers. This is what ReplaySubject is capable of doing. To create a ReplaySubject, we need to declare a type because the initializer does not take an initial value. We can also call its static initializer createUnbounded() to create a ReplaySubject that replays all the previous emitted event, but be careful using it. I will leave you with the description of the method*/

/* Same with BehaviorSubjects but only different is you could print the last n in the sequence compare to all*/

//Create our ReplaySubject with a string type
let subject = ReplaySubject<String>.create(bufferSize: 2)

subject.on(.Next("A"))

//New Subscription
subject.subscribe {
    print($0)
    }
    .addDisposableTo(disposeBag)




//emits
subject.on(.Next("B"))
subject.onNext("C") //onNext is a Convenience method equivalent to on(.Next(element: E))



//New Subscription
let secondSubscription = subject.subscribe {
    print("Second subscription:", $0)
}
//add it to the disposeBag
secondSubscription.addDisposableTo(disposeBag)
//emit
subject.onNext("D")
