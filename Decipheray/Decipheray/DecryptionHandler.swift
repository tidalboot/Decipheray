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
    
    public func decipherText (textToDecipher: String) -> [String] {
        var arrayOfStrings = textToDecipher.componentsSeparatedByString(" ")
        
        for (index, string) in enumerate(arrayOfStrings) {
            let stringLength = count(string) - 2
            var shortenedString = string.stringByPaddingToLength(stringLength, withString: string, startingAtIndex: 1)
            var lastCharacter = shortenedString[shortenedString.endIndex.predecessor()]
            shortenedString = dropLast(shortenedString)
            shortenedString.insert(lastCharacter, atIndex: shortenedString.startIndex)
            
            arrayOfStrings[index] = shortenedString
        }
        
        return arrayOfStrings
    }
    
}