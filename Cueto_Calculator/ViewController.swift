//
//  ViewController.swift
//  Cueto_Calculator
//
//  Created by ALEXA Cueto on 11/11/25.
// NEOPULSE TEAM:
// COLLO PAUL BENEDICT V.
// CUETO ALEXA JOYCE G
// PUA CHARLES MICHAEL G.
// WEI WENXUAN

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstNumber: UITextField!
    
    @IBOutlet weak var txtSecondNumber: UITextField!
    
    @IBOutlet weak var tvResults: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnAdd(_ sender: Any) {
        let num1: Double = Double(txtFirstNumber.text ?? "0") ?? 0
        let num2: Double = Double(txtSecondNumber.text ?? "0") ?? 0
        let result: Double = num1 + num2
        
        let newResult = "\(num1) + \(num2) = \(result)\n"
        let prevResult = tvResults.text ?? ""
        
        tvResults.text = newResult + prevResult
        
        txtFirstNumber.text = ""
        txtSecondNumber.text = ""
    }
    
    
    @IBAction func btnSubtract(_ sender: Any) {
        let num1: Double = Double(txtFirstNumber.text ?? "0") ?? 0
        let num2: Double = Double(txtSecondNumber.text ?? "0") ?? 0
        let result: Double = num1 - num2
        
        let newResult = "\(num1) - \(num2) = \(result)\n"
        let prevResult = tvResults.text ?? ""
        
        tvResults.text = newResult + prevResult
        
        txtFirstNumber.text = ""
        txtSecondNumber.text = ""
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        let num1: Double = Double(txtFirstNumber.text ?? "0") ?? 0
        let num2: Double = Double(txtSecondNumber.text ?? "0") ?? 0
        let result: Double = num1 * num2
        
        let newResult = "\(num1) * \(num2) = \(result)\n"
        let prevResult = tvResults.text ?? ""
        
        tvResults.text = newResult + prevResult
        
        txtFirstNumber.text = ""
        txtSecondNumber.text = ""
    }
    

    @IBAction func btnDivide(_ sender: Any) {
        let num1: Double = Double(txtFirstNumber.text ?? "0") ?? 0
        let num2: Double = Double(txtSecondNumber.text ?? "0") ?? 0
        let result: Double = num1 / num2
        
        let newResult = "\(num1) / \(num2) = \(result)\n"
        let prevResult = tvResults.text ?? ""
        
        tvResults.text = newResult + prevResult
        
        txtFirstNumber.text = ""
        txtSecondNumber.text = ""    }
    
    
    @IBAction func btnClear(_ sender: Any) {
        txtFirstNumber.text = ""
        txtSecondNumber.text = ""
        tvResults.text = ""
    }
    
    
    @IBAction func btnRandom(_ sender: Any) {
        let randomNum1 = Int.random(in: 1...100000)
        let randomNum2 = Int.random(in: 1...100000)
        
        txtFirstNumber.text = String(randomNum1)
        txtSecondNumber.text = String(randomNum2)
    }
    
}

