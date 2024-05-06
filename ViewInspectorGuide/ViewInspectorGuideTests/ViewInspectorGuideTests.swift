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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_StringValue_shouldBeHelloWorld() throws {
        // GIVEN
        let sut = ContentView()
        
        // WHEN
        let value = try sut.inspect().text().string()
        
        // THEN
        XCTAssertEqual(value, "Hello, world!")
    }

} // ViewInspectorGuideTests
