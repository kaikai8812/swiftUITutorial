//
//  LandmarkDetail.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/10.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    //  initでlistから取得してくるlandMarkと、environmentから取得するlandmarkで、合致するidを取得する (なんのために使うのか？)
    var landMarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    var body: some View {
        
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)  //  modelDataというプロパティを、アプリ全体で参照しているので、favoriteの変換を参照できる。
                }
            
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
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
