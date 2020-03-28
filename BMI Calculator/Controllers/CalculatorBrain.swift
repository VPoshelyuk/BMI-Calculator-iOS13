//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Slava Pashaliuk on 3/28/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let tempBMIVal = weight/pow(height, 2)
        if tempBMIVal < 18.5 {
            bmi = BMI(value: String(format: "%.1f",tempBMIVal), advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if tempBMIVal < 24.9 {
            bmi = BMI(value: String(format: "%.1f",tempBMIVal), advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            bmi = BMI(value: String(format: "%.1f",tempBMIVal), advice: "Eat less pies!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    func getBMI() -> BMI {
        return bmi ?? BMI(value: "0.0", advice: "Something went wrong...", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
    }
}
