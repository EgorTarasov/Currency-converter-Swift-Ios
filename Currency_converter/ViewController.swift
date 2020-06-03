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
    
    let UsRu: Float = 74
    let UsUa: Float = 26.74
    let UsUk: Float = 0.8
    let UsUs: Float = 1
    
    let RuRu: Float = 1
    let RuUs: Float = 0.015
    let RuUa: Float = 0.39
    let RuUk: Float = 0.012
    
    let UaUa: Float = 1
    let UaRu: Float = 2.58
    let UaUs: Float = 0.037
    let UaUk: Float = 0.030
    
    let UkUk: Float = 1
    let UkUa: Float = 33.59
    let UkUs: Float = 1.26
    let UkRu: Float = 85.56
    
    var currency_first : String = ""
    var currency_second : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBOutlet weak var FirstValue: UITextField!
    
    @IBOutlet weak var SecondValue: UITextField!
    
    @IBOutlet weak var FirstCurrency: UISegmentedControl!
    
    @IBOutlet weak var SecondCurrency: UISegmentedControl!
    @IBAction func ConverteTap(_ sender: UIButton) {
        
        switch FirstCurrency.selectedSegmentIndex {
        case 0:
            currency_first = "US"
        case 1:
            currency_first = "RU"
        case 2:
            currency_first = "UK"
        case 3:
            currency_first = "UA"
        default:
            currency_first="US"
        }
        
        switch SecondCurrency.selectedSegmentIndex {
        case 0:
            currency_second = "US"
        case 1:
            currency_second = "RU"
        case 2:
            currency_second = "UK"
        case 3:
            currency_second = "UA"
        default:
            currency_second="US"
        }
        
        let FirstCurrencyValue = Float(FirstValue.text!) ?? 0.0
        
        
        
        switch currency_first {
        case "US":
            switch currency_second {
            case "US":
                result = FirstCurrencyValue
                SecondValue.text = String(result)
            case "RU":
                result = FirstCurrencyValue * UsRu
                SecondValue.text = String(result)
            case "UA":
                result = FirstCurrencyValue * UsUa
                SecondValue.text = String(result)
            case "UK":
                result = FirstCurrencyValue * UsUk
                SecondValue.text = String(result)
            default:
                result = FirstCurrencyValue
                SecondValue.text = String(result)
            }
        //
        case "RU":
        switch currency_second {
        case "RU":
            result = FirstCurrencyValue
            SecondValue.text = String(result)
        case "US":
            result = FirstCurrencyValue * RuUs
            SecondValue.text = String(result)
        case "UA":
            result = FirstCurrencyValue * RuUa
            SecondValue.text = String(result)
        case "UK":
            result = FirstCurrencyValue * RuUk
            SecondValue.text = String(result)
        default:
            result = FirstCurrencyValue
            SecondValue.text = String(result)
        }
        //
        case "UA":
        switch currency_second {
        case "RU":
            result = FirstCurrencyValue * UaRu
            SecondValue.text = String(result)
        case "US":
            result = FirstCurrencyValue * UaUs
            SecondValue.text = String(result)
        case "UA":
            result = FirstCurrencyValue
            SecondValue.text = String(result)
        case "UK":
            result = FirstCurrencyValue * UaUk
            SecondValue.text = String(result)
        default:
            result = FirstCurrencyValue
            SecondValue.text = String(result)
        }
        //
        case "UK":
        switch currency_second {
        case "RU":
            result = FirstCurrencyValue * UkRu
            SecondValue.text = String(result)
        case "US":
            result = FirstCurrencyValue * UkUa
            SecondValue.text = String(result)
        case "UA":
            result = FirstCurrencyValue * UkUa
            SecondValue.text = String(result)
        case "UK":
            result = FirstCurrencyValue
            SecondValue.text = String(result)
        default:
            result = FirstCurrencyValue
            SecondValue.text = String(result)
        }
        //
            
        default:
            result = 0
        }
        
        //if FirstCurrency == 0.0{
        //value = "RU"
        //}
        
        //if SecondCurrency == 0.0{
        //    value = "US"
        //}
        //if value == "US"{
        //    result = FirstCurrency / RuUs
        //    SecondValue.text = String(result)
        //}
        //if value == "RU"{
        //    result = SecondCurrency * RuUs
        //    FirstValue.text = String(result)
        //}
        
        //print(result)
    }
    

}

