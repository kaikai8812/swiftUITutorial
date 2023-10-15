//
//  LandmarkDetail.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/10.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                LandmarkRow(landMark: landmark)
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
