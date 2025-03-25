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
            
            VStack(spacing: 20) {
                Circle()
                    .frame(width: 100)
                    .foregroundColor(.yellow)
                    .glow()
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .glow()
                
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 100))
                    .glow()
            }
        } //: ZSTACK
    }
}

// MARK: - MODIFIER

struct Glow: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            content
                .blur(radius: 15)
            
            content
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
