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
    
    func test_decipher_string_splits_string_with_space_in_to_an_array_of_two_strings_and_removes_the_last_two_characters_from_the_end_of_each_string () {
        var textArray: [String] = decryptionHandler!.decipherText("helloay youay")
        var firstString = textArray[0]
        var secondString = textArray[1]
        
        XCTAssertEqual(firstString, "hello", "Expected 'hello' but got \(firstString)")
        XCTAssertEqual(secondString, "you", "Expected 'you' but got \(secondString)")
    }

    
}
