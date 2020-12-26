//
//  ViewController.swift
//  BIMcalc
//
//  Created by 大城海斗 on 2020/12/26.
//  Copyright © 2020 大城海斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var bmiText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.height.keyboardType = UIKeyboardType.numberPad
        self.weight.keyboardType = UIKeyboardType.numberPad
    }
    @IBAction func resetButton(_ sender: Any) {
        height.text = ""
        weight.text = ""
    }
    

    @IBAction func calcButton(_ sender: Any) {
        let dheight = Int(height.text!)
        let dweight = Int(weight.text!)
        let dheight2 = dheight! * dheight!
        let bmiInt = Int(dweight! * 10000 / dheight2)
        let bmi = String(bmiInt)
    
        bmiText.text = ("あなたのBMIは" + bmi + "です")
    }
    
}

