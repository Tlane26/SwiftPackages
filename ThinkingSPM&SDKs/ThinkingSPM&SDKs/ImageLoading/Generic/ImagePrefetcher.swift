//
//  ImagePrefetcher.swift
//  ThinkingSPM&SDKs
//
//  Created by Tlanetzi Chavez Madero on 01/05/24.
//

import Foundation
import SDWebImageSwiftUI

final class ImagePrefetcher{
    
    static let instance = ImagePrefetcher()
    private let prefetcher = SDWebImagePrefetcher()
    
    private init() { }
    
    func startPrefetching(urls: [URL]){
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching(){
        prefetcher.cancelPrefetching()
    }
}

import Kingfisher
final class ImagePrefetcher2 {
    
    static let instance = ImagePrefetcher2()
    var prefetcher: Kingfisher.ImagePrefetcher? = nil
   
    private init() { }
    
    func startPrefetching(urls: [URL]){
        prefetcher = Kingfisher.ImagePrefetcher(urls: urls)
        prefetcher?.start()
        
    }
    
    func stopPrefetching(){
        prefetcher?.stop()
    }
}

