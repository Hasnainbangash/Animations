//
//  AnimatedText.swift
//  Animations
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct AnimatedText: View {
    var body: some View {
        Rectangle()
            .overlay {
                LinearGradient(colors: [.clear, .white, .clear], startPoint: .leading, endPoint: .trailing)
            }
    }
}

#Preview {
    AnimatedText()
}
