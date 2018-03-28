//
//  Knowlege.swift
//  NatuLan3
//
//  Created by osanai on 2018/03/28.
//  Copyright © 2018年 osanai. All rights reserved.
//

import Foundation

class Knowlege {
    var surfaceMeanRelations:[SurfaceMeanRelation] = []
    
    func surface(mean:Mean) -> String {
        for s in surfaceMeanRelations {
            if (s.isEqual(mean: mean)) {
                return s.surface.string
            }
        }
        return "<不明>"
    }
}
