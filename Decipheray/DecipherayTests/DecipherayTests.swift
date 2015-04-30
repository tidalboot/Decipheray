//
//  DecipherayTests.swift
//  DecipherayTests
//
//  Created by Nick Jones on 29/04/2015.
//  Copyright (c) 2015 Nick Jones. All rights reserved.
//

import UIKit
import XCTest
import Decipheray

class DecipherayTests: XCTestCase {
    
    var decryptionHandler: DecryptionHandler? = nil
    
    
    override func setUp() {
        super.setUp()
        decryptionHandler = DecryptionHandler()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_decipher_string_removes_ay_from_the_end_of_each_word_in_the_passed_in_string_and_then_moves_the_last_character_to_the_beginning () {
        var newText: String = decryptionHandler!.decipherText("on'tdayaysayhattay!")
        var expectedText = "don't say that !"
        
        XCTAssertEqual(newText, expectedText, "Expected '\(expectedText)' but got \(newText)")
    }

    
}
