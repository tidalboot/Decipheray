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
        
        var newText = textToDecipher
        var arrayOfStrings = [String]()
        
        if textToDecipher.rangeOfString("ayay") != nil {
            var textToBeChecked = NSMutableString(string: textToDecipher)
            var valueToSearch = "ayay"
            var replaceWith = "ay$"
            var myRegEx = NSRegularExpression(pattern: valueToSearch, options: .CaseInsensitive , error: nil)
            
            myRegEx?.replaceMatchesInString(textToBeChecked, options: nil, range: NSMakeRange(0, textToBeChecked.length), withTemplate: replaceWith)
            newText = textToBeChecked as String
        }

        arrayOfStrings = newText.componentsSeparatedByString("ay")
        
        for (index, string) in enumerate(arrayOfStrings) {
            if string != "" {
                var shortenedString = string.stringByPaddingToLength(count(string), withString: string, startingAtIndex: 1)
                //Stores last character in the string
                var lastCharacter = shortenedString[shortenedString.endIndex.predecessor()]
                //Removes the last chracter from the string
                shortenedString = dropLast(shortenedString)
                //And the puts the last character back in the string but now at the beginning
                shortenedString.insert(lastCharacter, atIndex: shortenedString.startIndex)
                
                //Finds whether the $ flag is present in the string
                if string.rangeOfString("$") != nil {
                    //Removes the flag
                    shortenedString = dropLast(shortenedString)
                    //And then inserts the removed 'a' and 'y' where the $ flag was previously
                    shortenedString.insert("a", atIndex: shortenedString.endIndex)
                    shortenedString.insert("y", atIndex: shortenedString.endIndex)
                }
                arrayOfStrings[index] = shortenedString
            }
        }
        
        var finalArray = [String]()
        
        //Finally removes any blank objects in the array
        for (index, string) in enumerate(arrayOfStrings) {
            if string != "" {
                finalArray.append(string)
            }
        }
        
        //Concatonates all of the objects in the array to a string and inserts a space between each
        var newString = " ".join(finalArray)
        return newString
    }
    
}