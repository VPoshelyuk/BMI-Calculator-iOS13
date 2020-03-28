//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calcBrain = CalculatorBrain()

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var hSlider: UISlider!
    @IBOutlet weak var wSlider: UISlider!
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightValue.text = String(format: "%.2f", sender.value)+"m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightValue.text = String(format: "%.0f", sender.value)+"Kg"
    }
    @IBAction func calculate(_ sender: UIButton) {
        calcBrain.calculateBMI(height: hSlider.value, weight: wSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
//        let resultVC = ResultViewController()
//        resultVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(resultVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calcBrain.getBMI()
        }
    }


}

