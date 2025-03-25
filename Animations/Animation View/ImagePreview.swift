//
//  ImagePreview.swift
//  Animations
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct ImagePreview: View {
    // MARK: - PROPERTIES
    
    @Namespace private var previewSmoothly
    @State private var preview: Bool = false
    @State private var selectedImage: String?
    
    // MARK: - FUNCTIONS
    
    func image(_ imageName: String) -> some View {
        Image(imageName)
            .resizable()
            .matchedGeometryEffect(id: imageName, in: previewSmoothly)
            .zIndex(selectedImage == imageName ? 1 : 0)
            .onTapGesture {
                withAnimation(Animation.easeInOut(duration: 0.3)) {
                    selectedImage = imageName
                    preview.toggle()
                }
            }
    }
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if preview {
                if let selectedImage = selectedImage {
                    image(selectedImage)
                        .ignoresSafeArea()
                }
            } else {
                Grid {
                    GridRow {
                        image("image1")
                        image("image2")
                    } //: GRID ROW
                    
                    GridRow {
                        image("image3")
                        image("image4")
                    } //: GRID ROW
                } //: GRID
                .padding(10)
            }
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ImagePreview()
}
