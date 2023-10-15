//
//  LandmarkList.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/10.
//

import SwiftUI


struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoriteOnly = false
    
    var filterLandMarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites only")
                })
                
                ForEach(filterLandMarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landMark: landmark)
                    }

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
        .environment(ModelData())
}
