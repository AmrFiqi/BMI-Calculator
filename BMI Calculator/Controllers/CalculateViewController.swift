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
    
    
    // MARK: - Struct Obejct
    
    var calculatorBrain = CalculatorBrain()
    
    // MARK: - IBAction Methods
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value) + " Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBMI(height, weight)
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue =  calculatorBrain.getValue()
            destinationVC.bmiAdvice = calculatorBrain.getAdice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
    
}

