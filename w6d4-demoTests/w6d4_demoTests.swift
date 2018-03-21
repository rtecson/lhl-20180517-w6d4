//
//  w6d4_demoTests.swift
//  w6d4-demoTests
//
//  Created by Roland on 2017-10-31.
//  Copyright © 2017 Roland. All rights reserved.
//

import XCTest
@testable import w6d4_demo

class w6d4_demoTests: XCTestCase {
    
    let calculator = Calculator()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddition() {
        let sum = calculator.add(augend: 5, addend: 2)
        XCTAssertTrue(sum == (5+2), "5+2 returned \(sum)")
    }
    
    func testSubtraction() {
        let difference = calculator.subtract(minuend: 5, subtrahend: 10)
        XCTAssertTrue(difference == (5-10), "5-10 returned \(difference)")
    }
    
    func testMultiplication() {
        let product = calculator.multiply(multiplicand: 4, multiplier: 9)
        XCTAssertTrue(product == (4*9), "4*9 returned \(product)")
    }
    
    func testDivision() {
        var result = calculator.divide(dividend: 10, divisor: 2)
        if let result = result {
            XCTAssertTrue(result == (quotient: 5, remainder: 0), "10/2 returned quotient: \(result.quotient), remainder: \(result.remainder)")
        }
        else {
            XCTFail("10/2 returned nil")
        }
        
        result = calculator.divide(dividend: 10, divisor: 0)
        if let result = result {
            XCTFail("10/0 returned quotient: \(result.quotient), remainder: \(result.remainder)")
        }

        result = calculator.divide(dividend: 10, divisor: 3)
        if let result = result {
            XCTAssertTrue(result == (quotient: 3, remainder: 1), "10/3 returned quotient: \(result.quotient), remainder: \(result.remainder)")
        }
        else {
            XCTFail("10/3 returned nil")
        }

        result = calculator.divide(dividend: -99, divisor: 3)
        if let result = result {
            XCTAssertTrue(result == (quotient: -33, remainder: 0), "-99/3 returned quotient: \(result.quotient), remainder: \(result.remainder)")
        }
        else {
            XCTFail("-99/3 returned nil")
        }

        result = calculator.divide(dividend: -15, divisor: -4)
        if let result = result {
            XCTAssertTrue(result == (quotient: 3, remainder: -3), "-15/-4 returned quotient: \(result.quotient), remainder: \(result.remainder)")
        }
        else {
            XCTFail("-15/-4 returned nil")
        }
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
