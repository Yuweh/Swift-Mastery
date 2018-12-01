//
//  ViewController.swift
//  RX Namer DEMO
//
//  Created by Francis Jemuel Bergonia on 01/12/2018.
//  Copyright © 2018 Xi Apps. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var helloLbl: UILabel!
    @IBOutlet weak var nameEntryTextField: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var namesLbl: UILabel!
    @IBOutlet weak var addNameBtn: UIButton!
    
    
    @IBOutlet weak var extraBottomLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    let disposeBag = DisposeBag()
    
    var namesArray: Variable<[String]> = Variable([])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindTextField()
        bindSubmitButton()
        bindAddNameButton()
        bindGuestLabel()
        namesArray.asObservable().subscribe(onNext: { names in
            self.namesLbl.text = names.joined(separator: ", ")
        })
        .disposed(by: disposeBag)
    }


    func bindTextField() {
        nameEntryTextField.rx.text
            .debounce(0.5, scheduler: MainScheduler.instance)
            .map {
            if ($0 == "") {
                return "Type your name below."
            } else {
                return "Hello, \($0!)."
            }
            }
        .bind(to: helloLbl.rx.text)
        .disposed(by: disposeBag)
    }
    
    func bindSubmitButton() {
        submitBtn.rx.tap
            .subscribe(onNext: {
            if self.nameEntryTextField.text != "" {
                self.namesArray.value.append(self.nameEntryTextField.text!)
                self.namesLbl.rx.text.onNext(self.namesArray.value.joined(separator: ", "))
                self.nameEntryTextField.rx.text.onNext("")
                self.helloLbl.rx.text.onNext("Type your name below.")
            }
        })
        .disposed(by: disposeBag)
    }
    
    func bindAddNameButton() {
        addNameBtn.rx.tap
            .throttle(0.5, scheduler: MainScheduler.instance)
            .subscribe(onNext: {
                guard let addNameVC = self.storyboard?.instantiateViewController(withIdentifier: "AddNameVC") as? AddNameVC
                    else {
                        fatalError("couldn't retried AddNameVC")
                }
                addNameVC.namesSubject.subscribe(onNext: { name in
                    self.namesArray.value.append(name)
                    addNameVC.dismiss(animated: true, completion: nil)
                }).disposed(by: self.disposeBag)
                self.present(addNameVC, animated: true, completion: nil)
            })
    }
    
    //Experimental Task
    func bindGuestLabel() {
        self.namesArray.asObservable().subscribe { (event) in
            switch event {
            case .next(let name):
                if (name.isEmpty) {
                    self.extraBottomLbl.text = "--"
                } else if (name.count == 1) {
                    self.extraBottomLbl.text = "Our current Guest"
                } else {
                    self.extraBottomLbl.text = "Our list Guests"
                }
            case .error(_):
                print("error")
            case .completed:
                print("error")
            }
        }
        .disposed(by: disposeBag)
    }
    
}

