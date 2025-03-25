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
    
    // MARK: - BODY
    
    var body: some View {
        Button {
            self.isLiked.toggle()
        } label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .tint(isLiked ? .red : .black)
                .font(.system(size: 60))
        }

    }
}

// MARK: - PREVIEW

#Preview {
    LikeButton()
}
