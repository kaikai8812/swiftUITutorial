//
//  FavoriteButton.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/15.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")  //  label文字列は、UIでは表示されないが、voiceOverで使用されるため、定義するべき
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(false))
}
