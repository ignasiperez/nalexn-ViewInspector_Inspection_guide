//
//  MyView.swift
//  ViewInspectorGuide
//
//  Created by Ignasi Perez-Valls on 6/5/24.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        HStack {
            Text("Hi")
            AnyView(OtherView())
        }
    }
}
