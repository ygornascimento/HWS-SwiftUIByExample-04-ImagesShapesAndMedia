//
//  ContentView.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToDrawImagesUsingImageViews: View {
    var body: some View {
        VStack {
            Image("dog")
//            Image(uiImage: UIImage(named: "dog")!)
            Image(systemName: "cloud.heavyrain.fill")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    HowToDrawImagesUsingImageViews()
}
