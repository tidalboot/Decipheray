//
//  DecryptionHandler.swift
//  Decipheray
//
//  Created by Nick Jones on 29/04/2015.
//  Copyright (c) 2015 Nick Jones. All rights reserved.
//

import Foundation

public class DecryptionHandler {

    public init () {
        
    }
    
    public func decipherText (textToDecipher: String) -> String {
        
        var ayayIndex: String.Index?
        var textToBeChecked = NSMutableString(string: textToDecipher)
        var newText = textToDecipher
        var arrayOfStrings = [String]()
        
        if textToDecipher.rangeOfString("ayay") != nil {
            ayayIndex = textToDecipher.rangeOfString("ayay")?.endIndex
            var valueToSearch = "ayay"
            var replaceWith = "ay$"
            var myRegEx = NSRegularExpression(pattern: valueToSearch, options: .CaseInsensitive , error: nil)
            
            myRegEx?.replaceMatchesInString(textToBeChecked, options: nil, range: NSMakeRange(0, textToBeChecked.length), withTemplate: replaceWith)
            newText = textToBeChecked as String
            arrayOfStrings = newText.componentsSeparatedByString("ay")
            
        } else {
            arrayOfStrings = newText.componentsSeparatedByString("ay")
        }
        
        for (index, string) in enumerate(arrayOfStrings) {
            if string != "" {
                let stringLength = count(string)
                var shortenedString = string.stringByPaddingToLength(stringLength, withString: string, startingAtIndex: 1)
                var lastCharacter = shortenedString[shortenedString.endIndex.predecessor()]
                shortenedString = dropLast(shortenedString)
                
                shortenedString.insert(lastCharacter, atIndex: shortenedString.startIndex)
                
                if string.rangeOfString("$") != nil {
                    shortenedString = dropLast(shortenedString)
                    shortenedString.insert("a", atIndex: shortenedString.endIndex)
                    shortenedString.insert("y", atIndex: shortenedString.endIndex)

                }
                arrayOfStrings[index] = shortenedString
            }
        }
        
        var finalArray = [String]()
        
        for (index, string) in enumerate(arrayOfStrings) {
            if string != "" {
                finalArray.append(string)
            }
        }
        
        var newString = " ".join(finalArray)
        return newString
    }
    
}