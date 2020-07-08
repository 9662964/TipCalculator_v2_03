//
//  ViewController.swift
//  TipCalculator_v2_03
//
//  Created by iljoo Chae on 7/7/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculateButton: UIButton!
    var billAmount: UITextField!
    var tipRatio: UITextField!
    var dividedBy: UITextField!
    var resultLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        calculateButton = UIButton(type: .system)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calculateButton)
        
        
        calculateButton.addTarget(self, action: #selector(calculateTip), for: .touchUpInside)

        
        billAmount = UITextField(frame: .zero)
        billAmount.placeholder = "Bill Amount"
        billAmount.borderStyle = .roundedRect
        billAmount.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(billAmount)
        
        
        tipRatio = UITextField(frame: .zero)
        tipRatio.placeholder = "Tip Ratio"
        tipRatio.borderStyle = .roundedRect
        tipRatio.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tipRatio)

        
        dividedBy = UITextField(frame: .zero)
        dividedBy.placeholder = "Divided By"
        dividedBy.borderStyle = .roundedRect
        dividedBy.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dividedBy)
        
        
        resultLabel = UITextField(frame:.zero)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.backgroundColor = .cyan
        resultLabel.placeholder = "Tip Calculator"
        resultLabel.textAlignment = .center
        resultLabel.adjustsFontSizeToFitWidth = true
        resultLabel.minimumFontSize = 100
        view.addSubview(resultLabel)

        constraintsInit()
        
        
    }
    func constraintsInit() {
        NSLayoutConstraint.activate([
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calculateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            tipRatio.bottomAnchor.constraint(equalTo: dividedBy.topAnchor, constant: -20),
            tipRatio.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            tipRatio.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            
            billAmount.bottomAnchor.constraint(equalTo: tipRatio.topAnchor, constant: -20),
            billAmount.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            billAmount.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            
            dividedBy.bottomAnchor.constraint(equalTo: calculateButton.topAnchor, constant: -20),
            dividedBy.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant:20),
            dividedBy.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            
            resultLabel.bottomAnchor.constraint(equalTo: billAmount.topAnchor, constant: -20),
            resultLabel.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
            
        ])
    }
    @objc func calculateTip() {
        print("Login has been tapped")
        
//        var totalBillAmount = Int(billAmount.text)
//        var tipRatio = Int(tipRatio.text)
//        var people = Int(dividedBy.text)

        guard let billAmount = billAmount.text else {return}
        let myValue = (billAmount as NSString).floatValue
        
        guard let tipRatio = Int(self.tipRatio.text ?? "") else {return}
        
        guard let devidedBy = Int(self.dividedBy.text ?? "") else {return}
        
        resultLabel.text = tipController.shared.calculateTip(tipRatio: tipRatio, amount: myValue, people: devidedBy)
        
//        if billAmount.isFirstResponder {
//            billAmount.resignFirstResponder()
//        }
//        if tipRatio.isFirstResponder {
//            tipRatio.resignFirstResponder()
//        }
    }
}
