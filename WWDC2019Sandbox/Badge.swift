//
//  Badge.swift
//  WWDC2019Sandbox
//
//  Created by 藤井陽介 on 2019/06/05.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct Badge : View {
    var body: some View {
        BadgeBackground()
    }
}

#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
