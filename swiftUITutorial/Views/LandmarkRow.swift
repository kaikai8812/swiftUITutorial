//
//  LandmarkRow.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/09.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landMark: Landmark
    
    var body: some View {
        HStack {
            //  画像
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkRow()
        LandmarkRow(landMark: landmarks[0])
    }
}
