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
            } //: VSTACK
        } //: ZSTACK
    }
}

// MARK: - MODIFIER

struct Glow: ViewModifier {
    @State private var throb: Bool = false
    func body(content: Content) -> some View {
        ZStack {
            // Blurred version of the content (creates glow effect)
            content
                .blur(radius: throb ? 25 : 5)
                .animation(.easeOut(duration: 0.5).repeatForever(), value: throb)
                .onAppear {
                    throb.toggle()
                }
            
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
