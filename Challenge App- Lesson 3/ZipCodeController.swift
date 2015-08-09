//
//  ZipCodeController.swift
//  Challenge App- Lesson 3
//
//  Created by Casey Arnold on 8/8/15.
//  Copyright (c) 2015 Casey Arnold. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeController : NSObject, UITextFieldDelegate {

func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    var result = true
    let prospectiveText = (textField.text as NSString).stringByReplacingCharactersInRange(range, withString: string)
    
        if count(string) > 0 {
            let disallowedCharacterSet = NSCharacterSet(charactersInString: "0123456789.-").invertedSet
            let replacementStringIsLegal = string.rangeOfCharacterFromSet(disallowedCharacterSet) == nil
            
            let resultingStringLengthIsLegal = count(prospectiveText) <= 5
            
            result = replacementStringIsLegal &&
            resultingStringLengthIsLegal
    }
    return result
}


}