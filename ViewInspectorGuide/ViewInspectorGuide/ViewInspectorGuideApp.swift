//
//  ViewInspectorGuideApp.swift
//  ViewInspectorGuide
//
//  Created by Ignasi Perez-Valls on 6/5/24.
//

import SwiftUI

@main
struct ViewInspectorGuideApp: App {
    var body: some Scene {
        WindowGroup {
            if isProcution {
                ContentView()
            }
        }
    }
    
    private var isProcution: Bool {
        NSClassFromString("XCTestCase") == nil
    }
}
