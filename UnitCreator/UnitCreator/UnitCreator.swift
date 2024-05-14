//
//  UnitCreator.swift
//  UnitCreator
//
//  Created by bj on 5/14/24.
//

import Foundation

protocol BuildingType {
    
}

protocol ZergBuildingType: BuildingType {
    
}

protocol ProtosBuildingType: BuildingType {
    
}

protocol TerranBuildingType: BuildingType {
    var movable: Bool {get set}
    var moveSpeed: Int {get set}
}


protocol BarrackType: TerranBuildingType {

}




