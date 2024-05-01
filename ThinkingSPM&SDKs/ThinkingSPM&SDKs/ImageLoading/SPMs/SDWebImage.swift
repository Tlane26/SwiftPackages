//
//  SDWebImage.swift
//  ThinkingSPM&SDKs
//
//  Created by Tlanetzi Chavez Madero on 15/04/24.
//

import SwiftUI
import SDWebImageSwiftUI

// fileprivate No se puede acceder a este archivo fuera de el (removido)
struct SDWebImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url))
            .resizable()
            .aspectRatio(contentMode: contentMode)
    }
}

struct SDWebImage: View {
    var body: some View {
        ImageLoader(
            url: "https://picsum.photos/id/237/200/300",
            contentMode: .fit
        )
        .frame(width: 200, height: 200)
    }
}

#Preview {
    SDWebImage()
}
