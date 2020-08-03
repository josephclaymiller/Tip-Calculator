//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Joseph Miller on 8/2/20.
//  Copyright © 2020 Joseph Miller. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    var tipPercentage = 15

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadSettings()
    }
    
    func saveSettings() {
        // Access UserDefaults
        let defaults = UserDefaults.standard
        // Set int value for "defaultTip" key
        defaults.set(tipPercentage, forKey: "defaultTip")
        // Force UserDefaults to save
        defaults.synchronize()
    }
    
    func loadSettings() {
        // Access UserDefaults
        let defaults = UserDefaults.standard
        // Get int value for tip
        let tipValue = defaults.integer(forKey: "defaultTip")
        tipPercentage = tipValue
        defaultTipSlider.setValue(Float(tipValue)/100, animated: false)
        setDefaultTip(defaultTipSlider)
    }
    
    @IBAction func setDefaultTip(_ sender: UISlider) {
        let tipSlider = sender
        tipPercentage = Int(tipSlider.value * 100)
        tipPercentLabel.text = "\(tipPercentage)%"
        // Save application settings
        saveSettings()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
