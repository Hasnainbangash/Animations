//
//  GlowingView.swift
//  Animations
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct GlowingView: View {
    // MARK: - PROEPRTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Circle()
                .frame(width: 100)
                .foregroundColor(.yellow)
                .glow()
        } //: ZSTACK
    }
}

// MARK: - MODIFIER

struct Glow: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            content
                .blur(radius: 15)
        } //: ZSTACK
    }
}

// MARK: - EXTENSION

extension View {
    func glow() -> some View {
        modifier(Glow())
    }
}

// MARK: - PREVIEW

#Preview {
    GlowingView()
}
