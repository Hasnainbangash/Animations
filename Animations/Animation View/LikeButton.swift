//
//  LikeButton.swift
//  Animations
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct LikeButton: View {
    // MARK: - PROPERTIES
    
    @State private var isLiked: Bool = false
    
    // MARK: - FUNCTIONS
    
    func image(_ image: Image) -> some View {
        image
            .tint(isLiked ? .red : .black)
            .font(.system(size: 60))
    }
    
    // MARK: - BODY
    
    var body: some View {
        Button {
            self.isLiked.toggle()
        } label: {
            ZStack {
                image(Image(systemName: "heart.fill"))
                image(Image(systemName: "heart"))
            } //: ZSTACK
        } //: BUTTON

    }
}

// MARK: - PREVIEW

#Preview {
    LikeButton()
}
