//
//  Sample.swift
//  NatuLan3
//
//  Created by osanai on 2017/12/18.
//  Copyright © 2017年 osanai. All rights reserved.
//

import UIKit

class Sample: NSObject {
    
    var knowlege:Knowlege
    
    override init() {
        
        // ソクラテスが人間である
        let so = Mean()
        so.isAtom = true
        so.identifier = "sokuratesu"
        let nin = Mean()
        nin.isAtom = true
        nin.identifier = "ningen"
        
        let sokuratesuganingen = Mean()
        let rule = RuleSubject.init(a: so, b: nin)
        sokuratesuganingen.ruleSet.append(rule)

        knowlege = Knowlege()
        knowlege.surfaceMeanRelations.append(SurfaceMeanRelation.init(m: so, s: Surface.init(s: "ソクラテス")))
        knowlege.surfaceMeanRelations.append(SurfaceMeanRelation.init(m: nin, s: Surface.init(s: "人間")))
        
        print(Speech().speech(mean: sokuratesuganingen, knowlege: knowlege))
    }
    
    
    // リンゴ美味しい
    
    
    
    
}
