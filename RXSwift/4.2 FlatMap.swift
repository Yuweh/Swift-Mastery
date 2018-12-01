import Foundation
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//disposeBag from memoy management
let disposeBag = DisposeBag()

/**/


struct Game {
    var price: Variable<Double>
}

let overwatch = Game(price: Variable.init(59.99))
let starwhal = Game(price: Variable.init(19.99)) //with updated change of value

let gameSubject = PublishSubject<Game>()

overwatch.price.value = 14.99

gameSubject
    .flatMap {
    $0.price.asObservable()
    }
    .subscribe(onNext: {
        print("Game Price: \($0)")
    }).disposed(by: disposeBag)

gameSubject.onNext(overwatch)
gameSubject.onNext(starwhal)



