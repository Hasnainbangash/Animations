//
//  ImagePreview.swift
//  Animations
//
//  Created by Elexoft on 25/03/2025.
//

import SwiftUI

struct ImagePreview: View {
    // MARK: - PROPERTIES
    
    // MARK: - FUNCTIONS
    
    func image(_ image: String) -> some View {
        Image(image)
            .resizable()
    }
    
    // MARK: - BODY
    
    var body: some View {
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
}

// MARK: - PREVIEW

#Preview {
    ImagePreview()
}
