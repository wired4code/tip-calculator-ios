//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sonny Sheth on 3/4/17.
//  Copyright © 2017 Sonny Sheth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var tipTotalLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var subTotalField: UITextField!
    
    @IBOutlet weak var taxField: UITextField!
    
    @IBOutlet weak var tipValueControl: UISegmentedControl!
    
    @IBOutlet weak var personsControl: UISegmentedControl!
    
    @IBOutlet weak var tipText: UILabel!
    
    @IBOutlet weak var totalText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        subTotalField.becomeFirstResponder()
        
        let TI = defaults.integer(forKey: "TipIndex")
        tipValueControl.selectedSegmentIndex = TI
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let TI = defaults.integer(forKey: "TipIndex")
        if (TI != tipValueControl.selectedSegmentIndex) {
            tipValueControl.selectedSegmentIndex = TI
        }
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateView() {
        UIView.animate(withDuration: 1) {
            self.tipTotalLabel.alpha = 1
            self.totalLabel.alpha = 1
            self.tipText.alpha = 1
            self.totalText.alpha = 1
        }
    }

    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func getTip(_ sender: AnyObject) {
        
        animateView()
        
        let percents = [0.15, 0.18, 0.2, 0.25]
        
        let people = [1, 2, 3, 4]
        
        let tax = Double(taxField.text!) ?? 0
        
        let tip = Double(subTotalField.text!) ?? 0
        
        let calculatedTip = tip * percents[tipValueControl.selectedSegmentIndex]
        
        let calculatedTotal = calculatedTip + tax + tip
        
        let finalTotal = Double(calculatedTotal)/Double(people[personsControl.selectedSegmentIndex])
        
        tipTotalLabel.text = String(format: "$%.02f", calculatedTip)
        
        totalLabel.text = String(format: "$%.02f", finalTotal)
        
    }
    
    
}

