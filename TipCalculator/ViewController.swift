//
//  ViewController.swift
//  TipCalculator
//
//  Created by Admin on 10/6/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipAdjust: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billField.becomeFirstResponder()
        
        // Set default percentages for tips
        let defaults = UserDefaults.standard
        
        defaults.set(10, forKey: "tip1")
        defaults.set(15, forKey: "tip2")
        defaults.set(20, forKey: "tip3")
        
        defaults.synchronize()
        
    }

    @IBAction func dismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate tip and total using users default
        
        let defaults = UserDefaults.standard

        let tip1 = defaults.double(forKey: "tip1")
        let tip2 = defaults.double(forKey: "tip2")
        let tip3 = defaults.double(forKey: "tip3")
        
        let tipPercentage = [tip1,tip2,tip3]
        
        let tip = bill * (tipPercentage[tipAdjust.selectedSegmentIndex])/100
        let total = bill + tip

        
        // Display tip and total
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    

    
}

