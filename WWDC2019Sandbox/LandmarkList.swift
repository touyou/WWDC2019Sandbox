//
//  LandmarkList.swift
//  WWDC2019Sandbox
//
//  Created by 藤井陽介 on 2019/06/04.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            }
            .navigationBarTitle(Text("Landmarks"))
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
