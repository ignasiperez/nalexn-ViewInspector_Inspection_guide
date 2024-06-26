//
//  ViewInspectorGuideTests.swift
//  ViewInspectorGuideTests
//
//  Created by Ignasi Perez-Valls on 6/5/24.
//

import XCTest
import ViewInspector
@testable import ViewInspectorGuide

final class ViewInspectorGuideTests: XCTestCase {

    func test_StringValue_shouldBeHelloWorld() throws {
        // GIVEN
        let sut = ContentView()
        
        // WHEN
        let value = try sut.inspect().text().string()
        
        // THEN
        XCTAssertEqual(value, "Hello, world!")
    }
    
    func test_StringValueOnOtherView_shouldBeOk() throws {
        // GIVEN
        let sut = MyView()
        
        // WHEN
        let value = try sut.inspect().hStack().anyView(1).view(OtherView.self).text().string()
        
        // THEN
        XCTAssertEqual(value, "Ok")
    }
    
    func test_StringValueOnOtherViewWithIntermediateResults_shouldBeOk() throws {
        // GIVEN
        let sut = MyView()
        
        // WHEN
        let hStack = try sut.inspect().hStack() // InspectableView<ViewType.HStack>
        let hiText = try hStack.text(0)         // InspectableView<ViewType.Text>
        let value = try hStack.anyView(1).view(OtherView.self).text().string()
        
        // THEN
        XCTAssertEqual(value, "Ok")
    }
    
    
    
    

} // ViewInspectorGuideTests
