//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Amr El-Fiqi on 07/04/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2.0)
        bmi?.value = bmiValue
            if bmi?.value ?? 0.0 < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more food!", color: UIColor.cyan)
            }
            else if bmi?.value ?? 0.0 < 24.9 {
                bmi = BMI(value: bmiValue, advice: "Fit and hot!", color: UIColor.green)
            }
            else {
                bmi = BMI(value: bmiValue, advice: "Lose weight!!!", color: UIColor.red)
            }
    }
    func getValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdice() -> String {
        return bmi?.advice ?? "Dunno"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    

}
