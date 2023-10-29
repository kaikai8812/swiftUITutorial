//
//  CategoryHome.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/29.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello,World")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
