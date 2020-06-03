//
//  ViewController.swift
//  Currency_converter
//
//  Created by Егор Тарасов on 03.06.2020.
//  Copyright © 2020 Егор Тарасов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let currency : Float = 0
    var value : String = "US"
    var result : Float = 0
    let RuUs: Float = 74
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBOutlet weak var FirstValue: UITextField!
    
    @IBOutlet weak var SecondValue: UITextField!
    
    
    @IBAction func ConverteTap(_ sender: UIButton) {
        
        let FirstCurrency = Float(FirstValue.text!) ?? 0.0
        
        let SecondCurrency = Float(SecondValue.text!) ?? 0.0
        
        if FirstCurrency == 0.0{
            value = "RU"
        }
        
        if SecondCurrency == 0.0{
            value = "US"
        }
        if value == "US"{
            result = FirstCurrency / RuUs
            SecondValue.text = String(result)
        }
        if value == "RU"{
            result = SecondCurrency * RuUs
            FirstValue.text = String(result)
        }
        
        print(result)
    }
    

}

