//
//  MyAppFunctions.swift
//  RandomUserID
//
//  Created by ramil on 02.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class myFUnctionsApp {
    
    func randomGenerateID(_ lenghtID: Int) -> String {
        let idElement = "abcdefghijklmnoprstuvyzqwx01234567890"
        var randomID = ""
        for _ in 0..<lenghtID {
            let random = Int(arc4random_uniform(UInt32(idElement.count)))
            randomID += String(idElement[idElement.index(idElement.startIndex, offsetBy: random)])
        }
        return randomID
    }
}
