//
//  PageView.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/11/05.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    
    var body: some View {
        PageViewController(pages: pages)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
//        .aspectRatio(3/2, contentMode: .fill)
}
