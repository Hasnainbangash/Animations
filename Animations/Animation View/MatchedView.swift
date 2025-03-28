//
//  MatchedView.swift
//  Animations
//
//  Created by Elexoft on 28/03/2025.
//

import SwiftUI

struct MatchedView: View {
    // MARK: - PROPERTIES
    
    @Namespace var namespace
    @State var show: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if !show {
                Text("SwiftUI")
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else {
                Text("SwiftUI")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        } //: ZSTACK
        .onTapGesture {
            show.toggle()
        }
    }
}

// MARK: - PREVIEW

#Preview {
    MatchedView()
}
