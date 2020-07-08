//
//  TipController.swift
//  TipCalculator_v2_03
//
//  Created by iljoo Chae on 7/8/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

class tipController {
    
    static let shared = tipController()
    
    func calculateTip(tipRatio: Int, amount: Float, people: Int) -> String {
        let totalBillAmount = amount
        let tipPercentage:Float = Float(tipRatio) / 100
        let people = people
        
        let tipAmount = amount * tipPercentage
        let tipAmountPerPerson = tipAmount / Float(people)
        let amountPerPerson = totalBillAmount / Float(people)
        
        let totalAmount = totalBillAmount + tipAmount
        let forEachPerson = tipAmountPerPerson + amountPerPerson
        
        let result = "Need to pay $\(forEachPerson) person"
        print("Total Amount is $\(totalAmount) \n Divided by \(people) people \n Need to pay $\(forEachPerson) person")
        return result
        
    }
}
