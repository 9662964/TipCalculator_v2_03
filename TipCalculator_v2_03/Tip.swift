//
//  Tip.swift
//  TipCalculator_v2_03
//
//  Created by iljoo Chae on 7/8/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

class Tip {
    var totalAmount: Float
    var tipRatio: Int
    var people: Int
    
    init(totalAmount: Float, tipRatio: Int, people: Int) {
        self.totalAmount = totalAmount
        self.tipRatio = tipRatio
        self.people = people
    }
}
