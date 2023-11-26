//
//  HowToLoadARemoteImageFromURL.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToLoadARemoteImageFromURL: View {
    var body: some View {
        VStack(spacing: 20) {
//            AsyncImage(url: URL(string: "https://hws.dev/paul.jpg"), scale: 9)
            
            AsyncImage(url: URL(string: "https://hws.dev/paul.jpg")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
        }
        .frame(width: 128, height: 128)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        
        AsyncImage(url: URL(string: "https://hws.dev/paul.jpg")) { phase in
            switch phase {
            case .failure:
                Image(systemName: "photo")
                    .font(.largeTitle)
            case .success(let image):
                image.resizable()
            default:
                ProgressView()
            }
        }
        .frame(width: 256, height: 256)
        .clipShape(RoundedRectangle(cornerRadius: 23))
    }
}

#Preview {
    HowToLoadARemoteImageFromURL()
}
