//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Stephanie Le on 10/6/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1Field: UITextField!
    @IBOutlet weak var tip2Field: UITextField!
    @IBOutlet weak var tip3Field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func changeTipDefault1(_ sender: Any) {
        
        // Get user's default tip value
        let tip1 = (Double(tip1Field.text!) ?? 0)
        
        // Set default to user's choice
        let defaults = UserDefaults.standard
        
        defaults.set(tip1, forKey: "tip1")
        
        defaults.synchronize()
        
        
        // Update tipFields to user's default
        //        tip1Field.text = String(format: "%", defaults.double(forKey: "tip1"))
        //        tip2Field.text = String(format: "%", defaults.double(forKey: "tip2"))
        //        tip3Field.text = String(format: "%", defaults.double(forKey: "tip3"))
    }
    @IBAction func changeTipDefault2(_ sender: Any) {
        // Get user's default tip value
        let tip2 = (Double(tip2Field.text!) ?? 0)
        
        // Set default to user's choice
        let defaults = UserDefaults.standard
        
        defaults.set(tip2, forKey: "tip2")
        
        defaults.synchronize()
    }
    
    @IBAction func changeTipDefault3(_ sender: Any) {
        
        // Get user's default tip value
        let tip3 = (Double(tip3Field.text!) ?? 0)
        
        // Set default to user's choice
        let defaults = UserDefaults.standard
        
        defaults.set(tip3, forKey: "tip3")
        
        defaults.synchronize()
    }
    
    
}
