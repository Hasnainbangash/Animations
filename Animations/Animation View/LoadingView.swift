//
//  LoadingView.swift
//  Animations
//
//  Created by Elexoft on 26/03/2025.
//

import SwiftUI

struct LoadingView: View {
    // MARK: - PROPERTIES
    
    @State private var rotation: Double = 0
    
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
                .rotationEffect(.degrees(rotation))
                .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: rotation)
                .onAppear {
                    self.rotation = 360
                }
            
            Text("Loading")
        } //: ZSTACK
        .compositingGroup()
        .frame(width: 125)
    }
}

// MARK: - PREVIEW

#Preview {
    LoadingView()
}
