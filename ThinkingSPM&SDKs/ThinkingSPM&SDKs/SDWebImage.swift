//
//  SDWebImage.swift
//  ThinkingSPM&SDKs
//
//  Created by Tlanetzi Chavez Madero on 15/04/24.
//

import SwiftUI
import SDWebImageSwiftUI


// En  casos de que deseamos utlizar otro package o se vuelva obsoleto
// agregamos otra capa que facilite su modificacion
struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    let opcion = 1
    
    var body: some View {
        if opcion == 1 {
            Rectangle()
                .opacity(0)
                .overlay {
                    SDWebImageLoader(url: url, contentMode: contentMode)
                        //.allowsHitTesting(false)
                }
                .clipped()
        }
        else {
            // otro package
        }
    }
}

// No se puede acceder a este archivo fuera de el
fileprivate struct SDWebImageLoader: View {
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
