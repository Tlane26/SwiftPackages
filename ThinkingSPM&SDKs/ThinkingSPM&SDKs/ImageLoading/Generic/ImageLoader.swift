//
//  ImageLoader.swift
//  ThinkingSPM&SDKs
//
//  Created by Tlanetzi Chavez Madero on 01/05/24.
//

import SwiftUI

// En  casos de que deseamos utlizar otro package o se vuelva obsoleto
// agregamos otra capa que facilite su modificacion
struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        VStack {
            // SDWebImage
            Rectangle()
                .opacity(0)
                .overlay {
                    SDWebImageLoader(url: url, contentMode: contentMode)
                    //.allowsHitTesting(false)
                }
                .clipped()
            
            
            // KING FISHER
            Rectangle()
                .opacity(0)
                .overlay {
                    KingFisherImageLoader(url: url, contentMode: contentMode)
                }
                .clipped()
        }
        
    }
}

#Preview {
    ImageLoader(
        url: "https://picsum.photos/id/237/200/300",
        contentMode: .fit
    )
}
