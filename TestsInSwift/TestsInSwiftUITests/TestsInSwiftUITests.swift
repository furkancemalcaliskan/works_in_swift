//
//  TestsInSwiftUITests.swift
//  TestsInSwiftUITests
//
//  Created by Furkan Cemal Çalışkan on 20.10.2022.
//

import XCTest

final class TestsInSwiftUITests: XCTestCase {

   

    func testToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
                
                
        let addButton = app.navigationBars["TestsInSwift.View"].buttons["Add"]
                
        let textField =  app.alerts["Add Item"].scrollViews.otherElements.collectionViews.textFields["Enter Item"]
                
        let okBUtton = app.alerts["Add Item"].scrollViews.otherElements.buttons["OK"]
                
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do").element
                
                
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okBUtton.tap()
                
        XCTAssertTrue(addedCell.exists)
        
        
        
    }

}
