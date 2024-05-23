//
//  UnitCreatorTests.swift
//  UnitCreatorTests
//
//  Created by bj on 5/14/24.
//

import XCTest
@testable import UnitCreator


class MockTimer: CreateTimer {

    var exp: XCTestExpectation? = nil
    
//    func startTimer() -> Timer {
//        return Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
//    }
//    
//    @objc func fireTimer() {
//        print("\(runCount)초.")
//        runCount += 1
//
//        if runCount == Int(createTime) {
//            timer?.invalidate()
//            print("종료 : \(runCount)초")
//            exp?.fulfill()
//        }
//    }
}

final class UnitCreatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBarrackStack() throws {
        
        let barrack = Barrack() 
        let _ = barrack.createMarine()
        XCTAssertEqual(barrack.unitStack.count, 1)
        let _ = barrack.createMarine()
        XCTAssertEqual(barrack.unitStack.count, 2)
        
        let _ = barrack.cancelUnit()
        XCTAssertEqual(barrack.unitStack.count, 1)
    }
    
    func testCreateMarine() throws {
        
        let barrack = Barrack()
        
        let marine = barrack.createMarine()
        XCTAssertEqual(marine.HP, 45)        
    }

//    func testCreatTimer() throws {
//        
//        // create.m
//        // create.currentTime
//        // timer 종료 == 기대 시간
//        
//        //테스트를 어떻게 할까?
//        // 1. 생성 기대 시간 == 실제 끝난 시간
//        
//        //startTime = create.m()
//        //create.m(completion: { endTime = currentTime})
//        let mockTimer = MockTimer()
//        let expec = expectation(description: "Timer expectation")
//        mockTimer.exp = expec
//        let timer = mockTimer.startTimer()
//        
//        wait(for: [expec], timeout: 7.0)
//        
//        XCTAssertEqual(mockTimer.runCount, Int(mockTimer.createTime))
//        
//        
//        
//        let barrack = Barrack()
//        let m1 = barrack.createMarine()
//        
//        m1.createTime
//        
//
//    }
        

}
