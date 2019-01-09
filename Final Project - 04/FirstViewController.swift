//
//  FirstViewController.swift
//  Final Project - 04
//
//  Created by Shubham Srivastava on 12/13/18.
//  Copyright © 2018 Shubham Srivastava. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var fahrenheitToCelsiusLabel: UILabel!
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var celsiusToFahrenheitLabel: UILabel!
    @IBOutlet weak var celsiusTextField1: UITextField!
    @IBOutlet weak var celsiusToKelvinLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // This action converts the Fahrenheit value in the FahrenheitTextField to a Celsius value.
    @IBAction func fahrenheitToCelsiusConverter(_ sender: UIButton) {
        if let Fahrenheit = Double(fahrenheitTextField.text!){
            fahrenheitToCelsiusLabel.text = String((Fahrenheit - 32) * 5/9)
        }
        else {
            errorLabel.text = " Please enter a Fahrenheit value"
        }
    }
    // This action converts the Celsius value in the CelTextField to a Fahrenheit value.
    @IBAction func celsiusToFahrenheitConverter(_ sender: UIButton) {
        if let Celsius = Double(celsiusTextField.text!){
            celsiusToFahrenheitLabel.text = String(((Celsius * 9) / 5) + 32)
        }
        else{
            errorLabel.text = "Please Enter a Celsius value"
        }
    }
    // This action converts the Celsius value in the CelcTextField to a Kelvin value.
    @IBAction func celsiusToKelvinConverter(_ sender: UIButton) {
        if let Celsius = Double(celsiusTextField1.text!){
            celsiusToKelvinLabel.text = String(Celsius + 273.15)
        }
        else{
            errorLabel.text = " Please Enter a Celsius value"
        }
    }
}

