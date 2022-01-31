//
//  ViewController.swift
//  Prework
//
//  Created by Josue David Contreras-Esquivel on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var BillAmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        // Get totalTip by multiplying tip to tipPercentage
        let tipPercentage = [0.15,0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip label
        tipAmountLabel.text =  String(format: "$%.2f", tip)
        // update total
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

