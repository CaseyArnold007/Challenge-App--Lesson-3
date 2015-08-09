//
//  ViewController.swift
//  Challenge App- Lesson 3
//
//  Created by Casey Arnold on 8/8/15.
//  Copyright (c) 2015 Casey Arnold. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //Outlets
    
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    //Txt Field Delegate Objects
    
    let zipCodeDelegate = ZipCodeController()
    let cashDelegate = CashController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setting the txt Delegates
        self.zipCodeField.delegate = zipCodeDelegate
        self.cashField.delegate = cashDelegate
        self.lockableField.delegate = self
    
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if(lockSwitch.on)
        {
            return true
        }
        
        else
        {
        return false
        }
    }

}

