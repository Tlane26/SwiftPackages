//
//  KingFisher.swift
//  ThinkingSPM&SDKs
//
//  Created by Tlanetzi Chavez Madero on 01/05/24.
//

import SwiftUI
import Kingfisher

// parent to wrap the implementation is in generic ImageLoader
struct KingFisherImageLoader: View {
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder {
                Color.red
            }
            .resizable()
            .aspectRatio(contentMode: contentMode)
        
    }
}

#Preview {
    KingFisherImageLoader(
        url: "https://picsum.photos/id/237/200/300",
        contentMode: .fit
    )
    .frame(width: 200, height: 200)
}
