//
//  AddNameVC.swift
//  RX Namer DEMO
//
//  Created by Francis Jemuel Bergonia on 01/12/2018.
//  Copyright © 2018 Xi Apps. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class AddNameVC: UIViewController {

    
    @IBOutlet weak var newNameTextField: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    @IBOutlet weak var namesLbl: UILabel!
    
    let disposeBag = DisposeBag()
    
    var namesSubject = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindSubmitBtn()
        bindTextField()

    }
    
    func bindSubmitBtn() {
        submitBtn.rx.tap
            .throttle(0.5, scheduler: MainScheduler.instance)
            .subscribe(onNext: {
            if (self.newNameTextField.text != "") {
                self.namesSubject.onNext(self.newNameTextField.text!)
            }
        })
        .disposed(by: disposeBag)
    }

    
    //Experimental Task
    func bindTextField() {
        self.newNameTextField.rx.text
            .debounce(0.2, scheduler: MainScheduler.instance)
            .map {
                if ($0 == "") {
                    return "Type VIP name above."
                } else {
                    return "Hello, \($0!)."
                }
            }
            .bind(to: namesLbl.rx.text)
            .disposed(by: disposeBag)
    }

}
