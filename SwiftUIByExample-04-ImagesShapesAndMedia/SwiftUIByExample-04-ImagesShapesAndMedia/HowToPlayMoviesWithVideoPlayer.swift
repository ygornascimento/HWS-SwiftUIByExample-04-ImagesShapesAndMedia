//
//  WhenShouldYouUseContainerRelativeShape.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI
import AVKit

struct HowToPlayMoviesWithVideoPlayer: View {
    var body: some View {
//        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "video", withExtension: "mp4")!))
//        VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!)).frame(height: 400)
        
        VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Text("Watermark")
                    .foregroundColor(.black)
                    .background(.white.opacity(0.7))
                Spacer()
            }.frame(width: 400, height: 300)
        }
        
        
    }
}

#Preview {
    HowToPlayMoviesWithVideoPlayer()
}
