//
//  ProfileHost.swift
//  LearnSwiftUI
//
//  Created by by on 2023/8/3.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode3
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode3?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode3?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            switch editMode3?.wrappedValue {
            case .inactive:
                ProfileSummary(profile: modelData.profile)
//            case .active:
//                Text("active")
//            case .transient:
//                Text("transient")
//            case .none:
//                Text("none")
            default:
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

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
        // 由于子视图使用到了环境变量，此处仍需要传递
            .environmentObject(ModelData())
    }
}
