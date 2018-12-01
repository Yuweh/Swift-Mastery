import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//disposeBag from memoy management
let disposeBag = DisposeBag()
/*
 PublishSubject emits only new items to its subscriber; every item added to the subject before the subscription will be not emitted. If the source Observable terminates with an error, the PublishSubject will not emit any items to subsequent observers, but will simply pass along the Error/Completed event from the source Observable.
 */

var publishSubject = PublishSubject<String>()
publishSubject.onNext("Hello")
publishSubject.onNext("World")

let pubSubSubscription = publishSubject.subscribe(onNext: {
    print($0)
}).addDisposableTo(disposeBag)

publishSubject.onNext("Hello")
publishSubject.onNext("World Again") //this Hello World Again is being printed and not the other. Because this one is inputed after subscription

let pubSubSubscriptionTwo = publishSubject.subscribe(onNext: {
    print($0)
}).addDisposableTo(disposeBag)

publishSubject.onNext("This will be printed by both Subscriptions")


//Other Exercises

//From TechVineLab


//Create our PublishSubject with a string type
let subject = PublishSubject<String>()
//ErrorType will be used for emitting an Error event
enum Error: ErrorType {
    case Test
}

//emit our first event before any subscription to the subject
subject.on(.Next("Bob"))

//New Subscription
subject.subscribe {
    print($0)
    }
    .addDisposableTo(disposeBag)

//emits
subject.on(.Next("Hello"))
subject.onNext("World") //onNext is a Convenience method equivalent to on(.Next(element: E))

//New Subscription
let secondSubscription = subject.subscribe {
    print("second subscription:", $0)
}
//add it to the disposeBag
secondSubscription.addDisposableTo(disposeBag)
//emit
subject.onNext("Ibrahim")

//dispose our second subscriber
secondSubscription.dispose()
//emit
subject.onNext("After disposing the second subscriber")

//emit an Error event
subject.onError(Error.Test) // or subject.onCompleted()

//New Subscription
let ThirdSubscription = subject.subscribe {
    print("third subscription:", $0)
}

//add it to the disposeBag
ThirdSubscription.addDisposableTo(disposeBag)


