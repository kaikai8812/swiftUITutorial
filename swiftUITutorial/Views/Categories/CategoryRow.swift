//
//  CategoryRow.swift
//  swiftUITutorial
//
//  Created by 青山凱 on 2023/10/29.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0){
                    ForEach(items) { landMark in
                        NavigationLink {
                            LandmarkDetail(landmark: landMark)
                        } label: {
                            CategoryItem(landmark: landMark)
                        }
                    }
                    
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(5))
    )
}
