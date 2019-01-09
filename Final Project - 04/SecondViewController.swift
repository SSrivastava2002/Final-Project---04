//
//  SecondViewController.swift
//  Final Project - 04
//
//  Created by Shubham Srivastava on 12/13/18.
//  Copyright © 2018 Shubham Srivastava. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var metersTextField: UITextField!
    @IBOutlet weak var metersToFeetLabel: UILabel!
    @IBOutlet weak var inchesTextField: UITextField!
    @IBOutlet weak var inchesToCentimetersLabel: UILabel!
    @IBOutlet weak var milimetersTextField: UITextField!
    @IBOutlet weak var milimetersToInchesLabel: UILabel!
    @IBOutlet weak var inchesTextField1: UITextField!
    @IBOutlet weak var inchesToFeetLabel: UILabel!
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var milesToYardsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // This action would convert the value in the mTextField from Meters to Feet.
    @IBAction func metersToFeetConverter(_ sender: UIButton) {
        if let Meters = Double(metersTextField.text!){
            metersToFeetLabel.text = String(Int((Meters * 3.28084)))
        }
        else{
            metersToFeetLabel.text = "ERROR"
        }
    }
    //This action would convert the value in the inTextField from Inches to Centimeters.
    @IBAction func inchesToCentimeterConverter(_ sender: UIButton) {
        if let Inches = Double(inchesTextField.text!){
            inchesToCentimetersLabel.text = String(Inches * 2.54)
        }
        else{
            inchesToCentimetersLabel.text = "ERROR"
        }
    }
    // This action would convert the value in the mmTextField from Milimeters to Inches.
    @IBAction func milimetersToInchesConverter(_ sender: UIButton) {
        if let Milimeters = Double(milimetersTextField.text!){
            milimetersToInchesLabel.text = String(Int(Milimeters * 0.0393701))
        }
        else{
            milimetersToInchesLabel.text = "ERROR"
        }
    }
    // This action would convert the value in the incTextField from Inches to Feet.
    @IBAction func inchesToFeetConverter(_ sender: UIButton) {
        if let Inches = Double(inchesTextField1.text!){
            inchesToFeetLabel.text = String(Int(Inches / 12))
        }
        else{
            inchesToFeetLabel.text = "ERROR"
        }
    }
    // This action would convert the value in the milTextField from Miles to Yards.
    @IBAction func milesToYardsConverter(_ sender: UIButton) {
        if let Miles = Double(milesTextField.text!){
            milesToYardsLabel.text = String(Miles * 1760)
        }
        else {
            milesToYardsLabel.text = "ERROR"
        }
    }
}

