//
//  ImageLoader.swift
//  SwiftPackages
//
//  Created by Nonprawich I. on 3/6/25.
//

import SwiftUI

struct ImageLoader: View { // Will be the wrapper for SDWebImageLoader
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay(
//                SDWebImageLoader(url: url, contentMode: contentMode)
                KingfisherImageLoader(url: url, contentMode: contentMode)
                    .allowsHitTesting(false)
            )
            .clipped()
    }
}

#Preview {
    ImageLoader(url: "https://picsum.photos/id/237/200/300", contentMode: .fill)
        .frame(width: 200, height: 200)
}
