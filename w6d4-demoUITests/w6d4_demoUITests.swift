//
//  w6d4_demoUITests.swift
//  w6d4-demoUITests
//
//  Created by Roland on 2017-10-31.
//  Copyright © 2017 Roland. All rights reserved.
//

import XCTest

class w6d4_demoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
//        let app = XCUIApplication()
//        let backButton = app.navigationBars.buttons["Back"]
//        app.buttons["Test 1"].tap()
//        backButton.tap()
//        app.buttons["Test 2"].tap()
//        backButton.tap()
//        app.buttons["Test 3"].tap()
//        backButton.tap()
        
        let app = XCUIApplication()
        let test1Button = app.buttons["test1Button"]
        test1Button.tap()
        // Do something here to check that we're on the right screen
        
        let backButton = app.navigationBars["Screen 1"].buttons["Back"]
        backButton.tap()
        test1Button.tap()
        backButton.tap()
        app.buttons["Test 2"].tap()
        app.navigationBars["Screen 2"].buttons["Back"].tap()
        
    }
    
}
