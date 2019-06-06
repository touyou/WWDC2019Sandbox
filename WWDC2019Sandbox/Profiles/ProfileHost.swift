//
//  ProfileHost.swift
//  WWDC2019Sandbox
//
//  Created by 藤井陽介 on 2019/06/06.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct ProfileHost : View {
    @Environment(\.editMode) var mode
    @State var profile = Profile.default
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if self.mode?.value == .active {
                    Button(action: {
                        self.profile = self.draftProfile
                        self.mode?.animation().value = .inactive
                    }) {
                        Text("Done")
                    }
                }
                Spacer()
                EditButton()
            }
            if self.mode?.value == .inactive {
                ProfileSummary(profile: self.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onDisappear {
                        self.draftProfile = self.profile
                }
            }
            }
            .padding()
    }
}

#if DEBUG
struct ProfileHost_Previews : PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
#endif
