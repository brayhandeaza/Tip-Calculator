//
//  ViewController.swift
//  TipCalculator
//
//  Created by Brayhan De Aza on August 31, 20.
//  Copyright © 2020 Brayhan De Aza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculatedTip(_ sender: Any) {
         tipPercentageLabel.text = "$0.00"
         let bill = Double(billAmountTextField.text!) ?? 0
         
         let tipPercentages = [0.15, 0.18, 0.2]
         let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
         let total = bill + tip

        tipPercentageLabel.text = String(format: "$%.2f", tip)
         totalLabel.text = String(format: "$%.2f", total)
    }
    
}

