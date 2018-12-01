import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

/*
 1. Create a DisposeBag instance called 'disposeBag'
 2. Create an Observable that holds an array of Int values
 3. Create a constant and subscribe to the Observable using 'onNext'.
 4. Inside the brackets of the 'onNext' closure, create a constant and set its value to be $0 (to capture each value from the Array) multiplied by 5.
 5. Print the constant
 6. Call .addDisposableTo() at the end of the closure and pass in your disposeBag constant
 */

let disposeBag = DisposeBag()

let numbers = Observable.from([2, 4, 6, 8, 10])
let multiplier = numbers.subscribe (onNext: {
    let product = ($0 * 5)
    print("\($0) multiplied by 5 is \(product)")
}).addDisposableTo(disposeBag)
