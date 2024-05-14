//
//  Barrack.swift
//  UnitCreator
//
//  Created by bj on 5/13/24.
//

import Foundation
import DequeModule

class Barrack: BarrackType {
    var movable: Bool = true
    var moveSpeed: Int = 1
    var unitStack: Deque<Unit> = Deque()

    let unitFactory = CreatorUnit()
    
    func createMarine() -> Unit {
        let marine = createUnit(unit: unitFactory.createMarine())
        return marine
    }
    
    func createMdeic() -> Unit {
        let medic = createUnit(unit: unitFactory.createMedic())
        return medic
    }
    
    private func createUnit(unit: Unit) -> Unit {
        unitStack.append(unit)
        return unit
    }
    
    func cancelUnit() {
        let _ = unitStack.popLast()
    }

    func move() {
        
    }
}

protocol UnitType {
    var HP: Int {get set}
}


//factory
class CreatorUnit {
    func createMarine() -> Unit {
        return Marine()
    }
    
    func createMedic() -> Unit {
        return Medic()
    }
}

//abs
protocol Unit: UnitType {
    
}


//concret
class Marine: Unit {
    var HP: Int = 45
}

class Medic: Unit {
    var HP: Int = 60
}
