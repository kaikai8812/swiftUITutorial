//
//  ProfileEditor.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/11/03.
//

import SwiftUI

struct ProfileEditor: View {
    
    // 親Viewから、値をもらうために、Binding修飾子をつける。
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
            let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
            let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
            return min...max
        }
    
    var body: some View {
        List {
            HStack {
                Text("UserName")
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Placeholder").bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
//                          tagで、selectionで渡されている値をセットするようにしている？
                    }
                }
                .pickerStyle(.segmented)
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
