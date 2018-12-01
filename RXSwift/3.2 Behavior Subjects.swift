import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//disposeBag from memoy management
let disposeBag = DisposeBag()
/* */

/*
  BehaviorSubject behaves almost the same as the publishSubject but we have to initialise it with a value. Why do we need a value at initialisation? Well, it is called seed/default value because every new subscriber to the behaviorSubject will receive the most recent element in the sequence. That element can be the seed/default value or the most recent value emitted by the source Observable.
 */

var behaviorSubject = BehaviorSubject(value: "Value A") //behavior subjects needs an initial value

let subscriptionOne = behaviorSubject.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)

behaviorSubject.onNext("Value B")
behaviorSubject.onNext("Value C")

let subscriptionTwo = behaviorSubject.subscribe(onNext: {
    print(" Subscription 2: \($0)")
}).disposed(by: disposeBag)

behaviorSubject.onNext("Both Subscriptions get the same Value")
