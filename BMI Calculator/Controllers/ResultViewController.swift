//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by IT-HW05011-00224 on 11/1/2567 BE.
//  Copyright © 2567 BE Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
        view.backgroundColor = color
    }

    @IBAction func onRecalcuratePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
