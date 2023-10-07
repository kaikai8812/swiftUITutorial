//
//  CircleImage.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/07.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("depsi")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 16)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
