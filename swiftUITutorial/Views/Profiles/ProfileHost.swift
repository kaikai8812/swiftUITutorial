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
                
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        //  Cancelボタンを押したときは、onDisapperが呼ばれる前に、draftProfileがmodelDataのもの(編集前のもの)に切り替わるため、結果的に編集したデータがmodelDataに更新されない。
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
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
