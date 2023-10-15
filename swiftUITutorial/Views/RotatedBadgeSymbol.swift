//
//  RotatedBadgeSymbol.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/15.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
//            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 10))
}
