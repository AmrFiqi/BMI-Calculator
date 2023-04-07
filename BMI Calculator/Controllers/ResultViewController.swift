//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Amr El-Fiqi on 07/04/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    // MARK: - IBOUTlets
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var backgroundColor: UIImageView!
    
    // MARK: - Variables
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    func updateUI() {
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        backgroundColor.backgroundColor = bmiColor
        
    }
}
