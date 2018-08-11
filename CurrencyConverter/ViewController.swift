//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Eric Andersen on 3/15/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    
    // Called when 'return' key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    inputTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        inputTextField.text = ""
        poundLabel.text = "0.00"
        yenLabel.text = "0.00"
        euroLabel.text = "0.00"
    }
    
    //Initial Commit
    // CurrencyConverter Commit
}


