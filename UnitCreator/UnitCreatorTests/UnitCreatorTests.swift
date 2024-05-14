//
//  UnitCreatorTests.swift
//  UnitCreatorTests
//
//  Created by bj on 5/14/24.
//

import XCTest
@testable import UnitCreator

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

}
