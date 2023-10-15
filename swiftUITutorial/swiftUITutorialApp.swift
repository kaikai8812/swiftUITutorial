//
//  swiftUITutorialApp.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/07.
//

import SwiftUI

@main
struct swiftUITutorialApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
