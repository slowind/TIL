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
        barrack.createUnit()
        XCTAssertEqual(barrack.unitStack.count, 1)
        barrack.createUnit()
        XCTAssertEqual(barrack.unitStack.count, 2)
        
        barrack.cancelUnit()
        XCTAssertEqual(barrack.unitStack.count, 1)
        
    }

}
