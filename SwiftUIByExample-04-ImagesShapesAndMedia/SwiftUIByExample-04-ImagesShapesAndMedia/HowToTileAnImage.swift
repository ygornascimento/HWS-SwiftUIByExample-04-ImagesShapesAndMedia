//
//  HowToTileAnImage.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToTileAnImage: View {
    var body: some View {
        VStack(spacing: 20) {
            /* Tile: A mode to repeat the image at its original size, as many times as necessary to fill the available space.
             https://developer.apple.com/documentation/swiftui/image/resizingmode#getting-resizing-modes
             */
            
            Image("AppleLogo")
                .resizable(resizingMode: .tile)
                .frame(width: 400, height: 200)
            
            /* Stretch: A mode to enlarge or reduce the size of an image so that it fills the available space.
             https://developer.apple.com/documentation/swiftui/image/resizingmode#getting-resizing-modes
             */
            Image("AppleLogo")
                .resizable(resizingMode: .stretch)
                .frame(width: 400, height: 200)
            
            Image("AppleLogo")
                .resizable(capInsets: 
                            EdgeInsets(top: 20,
                                       leading: 20,
                                       bottom: 20,
                                       trailing: 20),
                           resizingMode: .tile)
        }
        
        
    }
}

#Preview {
    HowToTileAnImage()
}
