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
                    .font(.largeTitle.weight(.bold))
                    // The id is just so that we can identify between the two shared elements across multiple views and the namespace is pretty much always the same. It's important to understand that when you are using matched geometry you have to keep the same integrity like the size should be same for example font size, background etc of the element before the modifier and ideally you almost have the same style between the two to have a perfect transition.
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else {
                Text("SwiftUI")
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        } //: ZSTACK
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    MatchedView()
}
