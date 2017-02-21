//
//  ViewController.swift
//  MessingWithIOS
//
//  Created by Dominic Valenciana on 2/20/17.
//  Copyright © 2017 Dominic Valenciana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //Mark: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //Mark: Actions
    @IBAction func setDefaultLableText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

