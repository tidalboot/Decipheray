//
//  ViewController.swift
//  Decipheray
//
//  Created by Nick Jones on 29/04/2015.
//  Copyright (c) 2015 Nick Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var decryptionHandler = DecryptionHandler()
    
    @IBOutlet var cipheredTextLabel: UITextField!
    @IBOutlet var decipheredTextLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func decipherButton(sender: AnyObject) {
        var textToConvert = decryptionHandler.decipherText(cipheredTextLabel.text)
        
        decipheredTextLabel.text = textToConvert
    }
    


}

