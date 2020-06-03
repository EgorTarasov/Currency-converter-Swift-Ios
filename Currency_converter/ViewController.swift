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
    let value : String = "US"
    var result : Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBOutlet weak var FirstValue: UITextField!
    
    @IBOutlet weak var SecondValue: UITextField!
    
    
    @IBAction func ConverteTap(_ sender: UIButton) {
        
        let FirstCurrency = Float(FirstValue.text!) ?? 0.0
        
        //var SecondCurrency : Float = 0
        if value == "US"{
            result = FirstCurrency / 74
        }
        SecondValue.text = String(result)
        print(result)
    }
    

}

