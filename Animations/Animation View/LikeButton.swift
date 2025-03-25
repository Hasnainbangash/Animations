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
    
    func image(_ image: Image, show: Bool) -> some View {
        image
            .tint(isLiked ? .red : .black)
            .font(.system(size: 60))
            .scaleEffect(show ? 1 : 0)
    }
    
    // MARK: - BODY
    
    var body: some View {
        Button {
            self.isLiked.toggle()
        } label: {
            ZStack {
                image(Image(systemName: "heart.fill"), show: isLiked)
                image(Image(systemName: "heart"), show: !isLiked)
            } //: ZSTACK
        } //: BUTTON
    }
}

// MARK: - PREVIEW

#Preview {
    LikeButton()
}
