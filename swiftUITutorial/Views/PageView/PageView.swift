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
//        VStack {
//            PageViewController(pages: pages, currentPage: $currentPage)
//            Text("Current Page: \(currentPage)")
//        }
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
}
