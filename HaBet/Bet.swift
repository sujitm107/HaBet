//
//  Bet.swift
//  HaBet
//
//  Created by Sujit Molleti on 2/22/20.
//  Copyright © 2020 Sujit Molleti. All rights reserved.
//

import Foundation
class Bet{
    var opponent: String
    var amount: String
    var activity: String
    var endDate: String
    
    init(opponent: String, amount: String, activity: String, endDate: String) {
        self.opponent = opponent
        self.amount = amount
        self.activity = activity
        self.endDate = endDate
    }
    
    func toString() -> String {
        return "\(amount) \(activity) bet with \(opponent)"
    }
    
}
