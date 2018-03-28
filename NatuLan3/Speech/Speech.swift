//
//  Speech.swift
//  NatuLan3
//
//  Created by osanai on 2018/03/28.
//  Copyright © 2018年 osanai. All rights reserved.
//

import Foundation

class Speech {
    
    func speech(mean:Mean, knowlege:Knowlege) -> String {
        if mean.isAtom {
            return knowlege.surface(mean: mean)
        }
        else {
            let rule = mean.ruleSet.first
            
            var string = ""
            for obj:Any in (rule?.decode)! {
                if (obj is String) {
                    string += obj as! String
                }
                if (obj is Mean) {
                    //TODO: ここ本当は入れ子
                    string += knowlege.surface(mean: obj as! Mean)
                }
            }
            return string
        }
    }
}
