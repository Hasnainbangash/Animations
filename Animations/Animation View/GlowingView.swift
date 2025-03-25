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
        Circle()
            .frame(width: 100)
            .foregroundColor(.yellow)
    }
}

// MARK: - PREVIEW

#Preview {
    GlowingView()
}
