//
//  UnitCreator.swift
//  UnitCreator
//
//  Created by bj on 5/14/24.
//

import Foundation

protocol Building {
    
}

protocol TerranBuildingType: Building {
    var movable: Bool {get set}
    var moveSpeed: Int {get set}
}

protocol BarrackType: TerranBuildingType {

}




