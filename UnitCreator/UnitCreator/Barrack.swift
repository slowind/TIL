//
//  Barrack.swift
//  UnitCreator
//
//  Created by bj on 5/13/24.
//

import Foundation
import DequeModule

class CreateTimer {
    var timer: Timer?
    var runCount = 0
    var unitCreateTime = 0.0

    func startTimer() {
        runCount = 0
        timer = Timer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: false)
        }
    
    @objc func fireTimer() {
        print("\(runCount)초.")
        runCount += 1
        
        if runCount == Int(unitCreateTime) {
            timer?.invalidate()
            print("종료 : \(self.runCount)초")
        }
    }
    
    func endTimer() {
        
    }
}

class CreateStaus {
    var createStatus: CreateStatusType?
    var timer: CreateTimer?
    
    init(createStatus: CreateStatusType? = nil, timer: CreateTimer? = nil) {
        self.createStatus = createStatus
        self.timer = timer
    }
    
    func status() {
        switch createStatus {
            case .waitRelease:
                print("status none")
            case .startCreate:
                timer?.startTimer()
            case .creating:
                print("status creating")
            case .doneCreate:
                print("status done")
            default:
                print("default")
        }
    }
    
}

//배럭에서 생성을 누르면 생성시작 -> 생성프로그레스 -> 생성끝 -> 다음 유닛이 있으면 이어서 생산.

// create -> progress -> done -> 스택 팝 (출시) -> 스택 카운트 체크 -> 있으면 다음

// done -> 이벤트는 스택에게(스택을 가진건 배럭)
// done 은 timer class 가 준다.
// createService(manager)
// status -> none -> creating -> done

enum CreateStatusType {
    case waitRelease
    case startCreate
    case creating
    case doneCreate
    case pauseCreate
}

protocol BarrackCreateUnitTask {
    
}

protocol CreateStatus {
    func startCreate()
    func cancelCreate()
    func pauseCreate()
    func doneCreate()
}

class Barrack: BarrackType {
    var HP: Int = 200
    
    var movable: Bool = true
    var moveSpeed: Int = 1
    var unitStack: Deque<TerranUnit> = Deque()

    let unitFactory = CreatorUnit()
    
    func countCreating() -> Int {
        return unitStack.count
    }
    
    func createMarine() -> TerranUnit {
        let marine = createUnit(unit: unitFactory.createMarine())
        return marine
    }
    
    func createMdeic() -> TerranUnit {
        let medic = createUnit(unit: unitFactory.createMedic())
        return medic
    }
    
    private func createUnit(unit: TerranUnit) -> TerranUnit {
        unitStack.append(unit)
        //start creat - timer 동작
        //status.startCreat
        return unit
    }
    
    func cancelUnit() {
        let _ = unitStack.popLast()
    }

    func move() {
        
    }
    
    func completeCreateUnit() {
        // timer 종료.
        // 다음 유닛 생성.
    }
}

//factory
class CreatorUnit {
    func createMarine() -> TerranUnit {
        return Marine()
    }
    
    func createMedic() -> TerranUnit {
        return Medic()
    }
}

