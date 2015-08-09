//
//  CashController.swift
//  Challenge App- Lesson 3
//
//  Created by Casey Arnold on 8/8/15.
//  Copyright (c) 2015 Casey Arnold. All rights reserved.
//

import Foundation
import UIKit

class CashController : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        //transforming the newText into a cent value
        newText = newText.stringByReplacingOccurrencesOfString(".", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
        
        var newTextAsCents = newText.doubleValue
        
        //format the cents using a currency formatter
        let currencyFormat = NSNumberFormatter()
        currencyFormat.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        var newMoneyStr = currencyFormat.stringFromNumber(newTextAsCents / 100)
        
        textField.text = newMoneyStr
        
        return false
    }
}