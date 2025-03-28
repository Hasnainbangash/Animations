//
//  MatchedView.swift
//  Animations
//
//  Created by Elexoft on 28/03/2025.
//

import SwiftUI

struct MatchedView: View {
    // MARK: - PROPERTIES
    
    // The id is just so that we can identify between the two shared elements across multiple views and the namespace is pretty much always the same. It's important to understand that when you are using matched geometry you have to keep the same integrity like the size should be same for example font size, background etc of the element before the modifier and ideally you almost have the same style between the two to have a perfect transition.
    
    @Namespace var namespace
    @State var show: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                } //: VSTACK
            } else {
                VStack {
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                } //: VSTACK
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
