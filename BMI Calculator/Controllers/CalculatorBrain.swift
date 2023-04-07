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
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) -> String {
        let bmiValue = weight / pow(height, 2.0)
        return String(format: "%.1f", bmiValue)
    }
    

}
