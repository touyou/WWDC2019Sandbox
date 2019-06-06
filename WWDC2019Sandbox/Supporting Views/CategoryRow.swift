//
//  CategoryRow.swift
//  WWDC2019Sandbox
//
//  Created by 藤井陽介 on 2019/06/06.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15.0)
                .padding(.top, 5.0)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { landmark in
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
                }.frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image(forSize: 155)
                .renderingMode(.original)
                .cornerRadius(5)
            Text(landmark.name)
                .color(.primary)
                .font(.caption)
            }
            .padding(.leading, 15)
    }
}

#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(4))
        )
    }
}
#endif
