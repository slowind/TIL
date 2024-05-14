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
        
    func createMedic() {
        
    }
    
    func createUnit() {
        let creatorUnit = CreatorUnit()
        unitStack.append(creatorUnit.createMarine())
    }
    
    func cancelUnit() {
        let _ = unitStack.popLast()
    }

    func move() {
        
    }
}

protocol UnitType {
    
}


//factory
class CreatorUnit {
    func createMarine() -> Unit {
        return Marine()
    }
}

//abs
class Unit: UnitType {
    
}


//concret
class Marine: Unit {
    
}

class Medic: Unit {
    
}
