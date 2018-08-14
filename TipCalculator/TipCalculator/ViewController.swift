//
//  ViewController.swift
//  TipCalculator
//
//  Created by Me Me on 8/12/18.
//  Copyright © 2018 Me Me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func amountChanged(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let billAmount = Double(self.billAmountTextField.text ?? "") ?? 0
        let tipPercentage = tipSlider.value
        
        let tipAmount = billAmount * Double(tipPercentage) / 100
        self.TipLabel.text = "Tip Amount: $\(tipAmount)"
        
        let total = (billAmount + tipAmount)
        self.totalLabel.text = "Total: $\(total)"
        
    }
    
    
    
    
    
    

}

