//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Joseph Miller on 8/2/20.
//  Copyright © 2020 Joseph Miller. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    var tipPercentage = 15

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setDefaultTip(_ sender: UISlider) {
        let tipSlider = sender
        tipPercentage = Int(tipSlider.value * 100)
        tipPercentLabel.text = "\(tipPercentage)%"
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
