//
//  HowToLetUsersSelectPicturesUsingPhotosPicker.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI
import PhotosUI

struct HowToLetUsersSelectPicturesUsingPhotosPicker: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    
    var body: some View {
        VStack {
            PhotosPicker("Select Avatar", 
                         selection: $avatarItem,
                         matching: .images)
            /*
             “Use matching: .screenshots if you only want screenshots.
             Use matching: .any(of: [.panoramas, .screenshots]) if you want either of those types.
             Use matching: .not(.videos) if you want any media that isn’t a video.
             Use matching: .any(of: [.images, .not(.screenshots)])) if you want all kinds of images except screenshots.

             ”

             Excerpt From
             SwiftUI by Example
             HWS Paul Hudson
             This material may be protected by copyright.
             */
            
            if let avatarImage {
                avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .onChange(of: avatarItem) { _ in
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        avatarImage = Image(uiImage: uiImage)
                        return
                    }
                }
                print("Failed")
            }
        }
    }
}

#Preview {
    HowToLetUsersSelectPicturesUsingPhotosPicker()
}
