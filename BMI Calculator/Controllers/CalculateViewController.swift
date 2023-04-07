//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var weightSlider: UISlider!
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value) + " Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
        let bmi = weight / pow(height, 2.0)
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%0.1f", bmi)
        }
    }
}

