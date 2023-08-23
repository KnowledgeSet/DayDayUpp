//
//  FavoriteButton.swift
//  LearnSwiftUI
//
//  Created by by on 2023/7/28.
//

import SwiftUI

struct FavoriteButton: View {
    // 
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                // 此格式只显示图标，不显示文字，但在旁白中会朗读
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
