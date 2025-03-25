//
//  AnimatedText.swift
//  Animations
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct AnimatedText: View {
    // MARK: - PROPERTIES
    
    @State private var moveGradient = true
    
    // MARK: - BODY
    
    var body: some View {
        Rectangle()
            .overlay {
                LinearGradient(colors: [.clear, .white, .clear], startPoint: .leading, endPoint: .trailing)
            }
            .animation(.linear(duration: 2), value: moveGradient)
            .onAppear {
                self.moveGradient.toggle()
            }
    }
}

// MARK: - PREVIEW

#Preview {
    AnimatedText()
}
