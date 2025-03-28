//
//  MatchedView.swift
//  Animations
//
//  Created by Elexoft on 28/03/2025.
//

import SwiftUI

struct MatchedView: View {
    // MARK: - PROPERTIES
    
    // The id is just so that we can identify between the two shared elements across multiple views and the namespace is pretty much always the same. It's important to understand that when you are using matched geometry you have to keep the same integrity like the size should be same for example font size, background etc of the element before the modifier and ideally you almost have the same style between the two to have a perfect transition. Matched geometry effect should be used on individual elements even including the color anything that is a styler should use that modifer. It's not really a good ideas to use it on a VSTACK or after a frame especially when there is a positon change or a size change such as what we did for the font. Secondly the individual elements should keep its integrety in term of styling as long as it does not effect the size or the position. So the integrety should be done before the modifier and the positioning should be done after. Next when you reorder these elements they're gonna work just fine. And Finally when you are not applying the matched geometry effect its simply going to fall back to the defult transition which is going to tbe fade in fade out on the element.
    
    @Namespace var namespace
    @State var show: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if !show {
                VStack(alignment: .leading, spacing: 12) {
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                } //: VSTACK
                .padding(20)
                .foregroundStyle(.white)
                .background(
                    Image("Background 5")
                        .resizable()
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .padding(20)
            } else {
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    
                    Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    
                    Text("20 sections - 3 hours".uppercased())
                        .font(.footnote.bold())
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text("SwiftUI")
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                } //: VSTACK
                .padding(20)
                .foregroundStyle(.black)
                .background(
                    Image("Background 5")
                        .resizable()
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
            }
        } //: ZSTACK
        .onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    MatchedView()
}
