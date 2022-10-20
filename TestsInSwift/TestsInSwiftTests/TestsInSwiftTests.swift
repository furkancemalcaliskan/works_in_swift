//
//  TestsInSwiftTests.swift
//  TestsInSwiftTests
//
//  Created by Furkan Cemal Çalışkan on 20.10.2022.
//

import XCTest
@testable import TestsInSwift

final class TestsInSwiftTests: XCTestCase {

    let math = MathematicsFunctions()
    func testAddIntegerFunction() {
        let result = math.addIntegers(x: 5, y: 8)
        
        XCTAssertEqual(result, 13)
    }
    
    func testMultiplyFunction() {
        let result = math.multiplyNumbers(x: 5, y: 8)
        
        XCTAssertEqual(result, 40)
    }
    
    func testDivideFunction() {
        let result = math.divideIntegers(x: 10, y: 2)
        
        XCTAssertEqual(result, 5)
    }

}
