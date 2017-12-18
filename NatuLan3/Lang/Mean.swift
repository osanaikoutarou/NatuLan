//
//  Mean.swift
//  NatuLan3
//
//  Created by osanai on 2017/12/18.
//  Copyright © 2017年 osanai. All rights reserved.
//

import UIKit

class Mean: NSObject {
    public
    // 意味素
    let isAtom:Bool = false
    
    let ruleSet:[Rule] = []
    // 内包
    let inclusionMeans:[Mean] = []

    //require
    let requireSet:[Dictionary<Mean:Mean>] = []
    //optional
    let optionalSet:[Dictionary<Mean:Mean>] = []
    
}
