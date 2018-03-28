//
//  Rule.swift
//  NatuLan3
//
//  Created by osanai on 2017/12/18.
//  Copyright © 2017年 osanai. All rights reserved.
//

import UIKit

class Rule {
    var identifier:String = ""
    var subject:Any?    // 主題
    // string
    var decode:[Any] = []
//    var stringArgs:[CVarArg] = []

}

class RuleEqual: Rule {
    // a == b
    var a:Mean?
    var b:Mean?
    
    init(a:Mean, b:Mean) {
        super.init()
        
        self.a = a
        self.b = b
        
        self.identifier = "Equal"
        self.decode = [a,"は",b]
//        self.stringArgs = [a,b]
    }
}

class RuleSubset: Rule {
    // 属している
    // ソクラテスは人間である
    // aはbである
    var a:Mean?
    var b:Mean?
    
    init(a:Mean, b:Mean) {
        super.init()
        
        self.a = a
        self.b = b
        
        self.identifier = "Subset"
        self.subject = a
        self.decode = [a,"は",b]
    }
}

class RuleSubject: Rule {
    // 主題がx
    var a:Mean?
    var b:Mean?
    
    init(a:Mean, b:Mean) {
        super.init()
        
        self.a = a
        self.b = b
        
        self.identifier = "Subject"
        self.subject = a
        self.decode = [a,"が",b]
    }
}


