//
//  PageView.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/11/05.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        VStack(content: {
//            Button("次のページ") { currentPage += 1 }
            PageViewController(pages: pages, currentPage: $currentPage)  //  PageViewControllerが、複数のVCを持って、画像を出しているイメージ
            Text("Current Page: \(currentPage)")
        })
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
}
