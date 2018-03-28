//
//  SurfaceMeanRelation.swift
//  NatuLan3
//
//  Created by osanai on 2017/12/18.
//  Copyright © 2017年 osanai. All rights reserved.
//

import UIKit

class SurfaceMeanRelation: NSObject {
    let mean:Mean
    let surface:Surface
    
    init(m:Mean , s:Surface) {
        mean = m
        surface = s
    }
    
    func isEqual(mean m:Mean) -> Bool {
        if self.mean.identifier == m.identifier {
            return true
        }
        return false
    }
}
