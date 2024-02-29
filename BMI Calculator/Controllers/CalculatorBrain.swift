//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by IT-HW05011-00224 on 11/1/2567 BE.
//  Copyright © 2567 BE Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    let overColor: UIColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    let normalColor: UIColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    let underColor: UIColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .black
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height,  2)
        
        switch bmiValue {
        case 25...:
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: overColor)
        case 18.5...:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: normalColor)
        default:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: underColor)
        }
        
    }
}
