//
//  LandmarkList.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/10.
//

import SwiftUI


struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    
    var filterLandMarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filterLandMarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark) // Viewを直接置くだけで遷移できる
                } label: {
                    LandmarkRow(landMark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList()
}
