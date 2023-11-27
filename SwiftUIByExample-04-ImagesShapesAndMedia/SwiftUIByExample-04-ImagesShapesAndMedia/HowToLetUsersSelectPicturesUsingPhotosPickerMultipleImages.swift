//
//  HowToLetUsersSelectPicturesUsingPhotosPickerMultipleImages.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI
import PhotosUI

struct HowToLetUsersSelectPicturesUsingPhotosPickerMultipleImages: View {
    @State private var selectedItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<selectedImages.count, id: \.self) { i in
                        selectedImages[i]
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    }
                }
            }.toolbar {
                PhotosPicker("Selected images", selection: $selectedItems, matching: .images)
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
            }.onChange(of: selectedItems) { _ in
                Task {
                    selectedImages.removeAll()
                    
                    for item in selectedItems {
                        if let data = try? await item.loadTransferable(type: Data.self) {
                            if let uiImage = UIImage(data: data) {
                                let image = Image(uiImage: uiImage)
                                selectedImages.append(image)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HowToLetUsersSelectPicturesUsingPhotosPickerMultipleImages()
}
