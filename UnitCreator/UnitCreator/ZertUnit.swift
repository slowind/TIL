//
//  ZertUnit.swift
//  UnitCreator
//
//  Created by bj on 5/23/24.
//

import Foundation

protocol ZergUnit: UnitType {
    var createTime: Int {get set}
}

class Zergring: ZergUnit {
    var createTime: Int = 3
    var HP: Int = 15
    
    init(createTime: Int = 3, HP: Int = 15) {
        self.createTime = createTime
        self.HP = HP
    }    
}
