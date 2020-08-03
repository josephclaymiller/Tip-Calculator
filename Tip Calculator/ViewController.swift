//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Joseph Miller on 7/30/20.
//  Copyright © 2020 Joseph Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Load saved settings
        loadSavedSettings()
    }
    
    func loadSavedSettings() {
        // retrieve the default tip percentage from UserDefaults
        let defaults = UserDefaults.standard
        // and use it to update the tip amount
        let tipValue = defaults.integer(forKey: "defaultTip")
        tipSlider.setValue(Float(tipValue)/100, animated: true)
        calculateTip(tipSlider!)
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        // Calculate the tip and total
        let tipPercentage = Int(tipSlider.value * 100)
        let tip = bill * Double(tipPercentage) / 100
        let total = bill + tip
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipPercentLabel.text = String(format: "%d%%", tipPercentage)
    }
}

