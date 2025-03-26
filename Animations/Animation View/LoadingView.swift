//
//  LoadingView.swift
//  Animations
//
//  Created by Elexoft on 26/03/2025.
//

import SwiftUI

struct LoadingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            
            Circle()
                .stroke(lineWidth: 4)
                .opacity(0.3)
                .foregroundColor(.gray)
            
            Circle()
                .trim(from: 0, to: 0.25)
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                .foregroundColor(.black)
            
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    LoadingView()
}
