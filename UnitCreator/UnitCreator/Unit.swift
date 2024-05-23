//
//  Unit.swift
//  UnitCreator
//
//  Created by bj on 5/14/24.
//

import Foundation

protocol UnitType {
    var HP: Int {get set}
}

//abs
protocol TerranUnit: UnitType {
    var createTime: Int {get set}
}

//concret
class Marine: TerranUnit {
    var createTime: Int = 3 //3 second
    var HP: Int = 45
    
}

class Medic: TerranUnit {
    var createTime: Int = 4 //4 second
    var HP: Int = 60
}

