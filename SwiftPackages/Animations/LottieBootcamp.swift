//
//  LottieBootcamp.swift
//  SwiftPackages
//
//  Created by Nonprawich I. on 7/6/25.
//

import SwiftUI
import Lottie

// .json <- OLD (Generic Old Format)
// .dotLottie <- NEW

struct LottieHelperView: View {
    
    var fileName: String = "AppleLock.json"
    var contentMode: UIView.ContentMode = .scaleAspectFill
    var playLoopMode: LottieLoopMode = .playOnce
    var onAnimationDidFinish: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            LottieView(animation: .named(fileName))
                .configure({ lottieAnimationView in
                    lottieAnimationView.contentMode = contentMode
                    //                lottieAnimationView.shouldRasterizeWhenIdle = true
                })
                .playbackMode(.playing(.toProgress(1, loopMode: playLoopMode)))
                .animationDidFinish { completed in
                    onAnimationDidFinish?()
                }
                
        }
    }
}

#Preview {
    LottieHelperView()
}
