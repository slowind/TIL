//
//  TerranBuildingType.swift
//  UnitCreator
//
//  Created by bj on 5/23/24.
//

import Foundation

protocol TerranBuildingType: BuildingType {
    var movable: Bool {get set}
    var moveSpeed: Int {get set}
}

protocol BarrackType: TerranBuildingType {

}
