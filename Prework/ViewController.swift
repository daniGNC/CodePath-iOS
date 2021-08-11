//
//  ViewController.swift
//  Prework
//
//  Created by danielle rodriguez on 7/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var bottomBar: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        //retrieving bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //retrieving Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15,0.18,0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update Tip Amount Label
        tipAmountLabel.text = String(format: "$%2f",tip)
        totalLabel.text = String(format:"$%2f",total)
    }

}

