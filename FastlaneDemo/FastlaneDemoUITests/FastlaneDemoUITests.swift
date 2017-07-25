//
//  FastlaneDemoUITests.swift
//  FastlaneDemoUITests
//
//  Created by nmtx-yu on 2017/7/24.
//  Copyright © 2017年 yuxiang. All rights reserved.
//

import XCTest

class FastlaneDemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    func testApp(){
        
        snapshot("0Launch")
        let button = XCUIApplication().buttons["Button"]
        snapshot("1Launch")
        button.tap()
         snapshot("1Launch")
        button.tap()
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
