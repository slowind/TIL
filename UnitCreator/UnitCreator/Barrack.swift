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
        unitStack.append(Unit())
    }
    
    func cancelUnit() {
        let _ = unitStack.popLast()
    }

    func move() {
        
    }
}

protocol UnitType {
    
}

struct Unit: UnitType {
    
}
