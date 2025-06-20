//
//  SDWebImageBootcamp.swift
//  SwiftPackages
//
//  Created by Nonprawich I. on 2/6/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageLoader: View { // Able to access only in this file
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: contentMode)
        } placeholder: {
            Rectangle().foregroundColor(.gray)
        }
        .onSuccess { image, data, cacheType in
            // Success
            // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
        }
    }
}



struct SDWebImageBootcamp: View {
    var body: some View {
        ImageLoader(url: "https://picsum.photos/id/237/200/300", contentMode: .fill)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    SDWebImageBootcamp()
}
