//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Sonny Sheth on 3/6/17.
//  Copyright © 2017 Sonny Sheth. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var defaultTipControlSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultTipControlSegment.selectedSegmentIndex = defaults.integer(forKey: "TipIndex")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onChange(_ sender: AnyObject) {
        
        
        let selected = defaultTipControlSegment.selectedSegmentIndex
        
        defaults.set(selected, forKey: "TipIndex")
        
        sharedDataAccess.number = selected
        sharedDataAccess.initialized = true
        
    }

}
