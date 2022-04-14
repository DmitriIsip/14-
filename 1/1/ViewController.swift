//
//  ViewController.swift
//  1
//
//  Created by Гость on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buttonAc:UIButton!
    //АС
    
    @IBOutlet weak var buttonZero:UIButton!
    
    
    
    @IBOutlet weak var buttonChangeResultLabel: UIStepper!
    //увеличитель
    
    
    @IBOutlet weak var resultLabel: UILabel!
    //результат Лабел
    
    @IBOutlet weak var buttons: UIStackView!
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    override func viewDidLoad() {
        buttonAc.layer.cornerRadius = 36
        
    }
    
    //тут номера
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
        else
        {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    //(+-*/)
    @IBAction func inputOperan(_ sender: UIButton) {
        operand = sender.titleLabel?.text as!
        String
    }
    //удаление
    @IBAction func clearAction (_ sender: UIButton) {
        numberOne = ""
        numberOne = ""
        operand = ""
        resultLabel.text = "0"
    }
    @IBAction func resultAction(_ sender: UIButton) {
    //ровно
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double (numberOne)! / Double(numberTwo)!
        case "+":
            result = Double (numberOne)! + Double(numberTwo)!
        case "-":
            result = Double (numberOne)! - Double(numberTwo)!
        case "*":
            result = Double (numberOne)! * Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0) == 0.0 {
            resultLabel.text = String(Int(result))
        }
        else
        {
            resultLabel.text = String(result)
        }
    }
    //увел/умен
    @IBAction func changResultLabel(_ sender: UIStepper) {
        let font = resultLabel.font?.fontName
        let fontSize = CGFloat(sender.value)
        
        resultLabel.font = UIFont (name: font!, size: fontSize)
    }
    //вкл выкл
@IBAction func hiddenButtons(_ sender: Any) {
    buttons.isHidden = !buttons.isHidden
    buttonChangeResultLabel.isHidden = !buttonChangeResultLabel.isHidden
}
}

