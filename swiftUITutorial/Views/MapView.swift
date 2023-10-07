//
//  MapView.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/07.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: .init(latitude: 35.658584, longitude: 139.745431),
                                                   latitudinalMeters: 300,
                                                   longitudinalMeters: 300)
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
