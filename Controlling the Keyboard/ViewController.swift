//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Ivaylo Todorov on 7.11.15 г..
//  Copyright © 2015 г. Ivaylo Todorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var textLabel: UILabel!
    
    
    @IBAction func button(sender: AnyObject) {
        
        textLabel.text = textField.text
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.textField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
    
        return true
        
    }

}

/*

var catAge = Int(catAgeTextField.text!)!

catAge = catAge * 7

resultLabel.text = "Your cat is \(catAge) in cat years"


*/