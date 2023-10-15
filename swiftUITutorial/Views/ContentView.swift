//
//  ContentView.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(ModelData())
    }
}

