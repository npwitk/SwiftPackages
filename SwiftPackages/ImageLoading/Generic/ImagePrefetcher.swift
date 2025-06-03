//
//  ImagePrefetcher.swift
//  SwiftPackages
//
//  Created by Nonprawich I. on 3/6/25.
//

import Foundation
import SDWebImageSwiftUI

final class ImagePrefetcher {
    static let instance = ImagePrefetcher()
    private let prefetcher = SDWebImagePrefetcher()
    
    private init() {}
    
    func startPrefetching(urls: [URL]) {
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching() {
        prefetcher.cancelPrefetching()
    }
}

import Kingfisher
final class ImagePrefetcher2 {
    
    static let instance = ImagePrefetcher2()
    var prefetchers: [[URL]: Kingfisher.ImagePrefetcher] = [:]

    private init() {}
    
    func startPrefetching(urls: [URL]) {
        prefetchers[urls] = Kingfisher.ImagePrefetcher(urls: urls)
        prefetchers[urls]?.start()
    }
    
    func stopPrefetching(urls: [URL]) {
        prefetchers[urls]?.stop()
    }
}
