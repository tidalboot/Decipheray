//
//  DecipherayTests.swift
//  DecipherayTests
//
//  Created by Nick Jones on 29/04/2015.
//  Copyright (c) 2015 Nick Jones. All rights reserved.
//

import UIKit
import XCTest

class DecipherayTests: XCTestCase {
    
    func test_decipher_string_returns_who_are_you_from_correctly_ciphered_text {
        var textToDecipher: String = decryptionHandler.decipherString("owhay reay ouyay?")
        XCTAssertEqual(textToDecipher, "Who are you?", "Expected the returned text to be 'Who are you?' but got \(textToDecipher) instead")
    }
    
    func test_decipher_string_returns_a_built_in_error_message_when_passed_incorrectly_ciphered_text {
        var textToDecipher: String = decryptionHandler.decipherString("Normal text")
        XCTAssertEqual(textToDecipher, "Incorrectly ciphered string", "Expected the built in error message but got \(textToDecipher) instead")
    }
    
    func test_decipher_string_returns_dont_say_that_from_correctly_ciphered_text {
        var textToDecipher: String = decryptionHandler.decipherString("on’tdayaysayhattay!")
        XCTAssertEqual(textToDecipher, "Don't say that!", "Expected 'Dont' say that!' but got \(textToDecipher) instead")
    }
    
}
