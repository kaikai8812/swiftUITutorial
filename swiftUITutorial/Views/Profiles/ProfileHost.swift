//
//  ProfileHost.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/29.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    var body: some View {
        Text("Profile for: \(draftProfile.username)")
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
    //  このViewの子Viewである、ProfileSummaryがenvironmentで値を取得しているので、親Viewであるこいつも、environment修飾子が必要になる。
}
