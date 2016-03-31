//
//  TipViewController.swift
//  Dwumfour-TipCalculator
//
//  Created by Joseph Dwumfour on 10/20/15.
//  Copyright © 2015 Joseph Dwumfour. All rights reserved.
//

import UIKit


class TipViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipRateTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    //Calculate Button
    @IBAction func calculateTip(sender: AnyObject) {
        //Converts string values to float values
        let billAmount = NSString(string: billAmountTextField.text!).floatValue
        let tipRate = NSString(string: tipRateTextField.text!).floatValue
        
        //Calculate tips & total amount
        let tipAmount = billAmount * (tipRate/100)
        let total = tipAmount + billAmount
        
        //Displays tip & total amount
        tipAmountLabel.text = String(format: "%0.2f", tipAmount)
        totalLabel.text = String(format: "%0.2f", total)
    }
    
    //Clear Button
    @IBAction func clearButton(sender: AnyObject) {
        self.tipRateTextField.text = nil;
        self.billAmountTextField.text = nil;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Set the delegate of the text field to the view controller
            self.billAmountTextField.delegate = self
            self.tipRateTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
