//
//  HowToRenderImagesUsingSFSymbols.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToRenderImagesUsingSFSymbols: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "moon.stars.fill")
            
            Image(systemName: "wind.snow")
                .font(.largeTitle)
            
            Image(systemName: "cloud.heavyrain.fill")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Image(systemName: "cloud.sun.rain.fill")
                .renderingMode(.original)
                .font(.largeTitle)
                .padding()
                .background(.black)
                .clipShape(Circle())
            
            Image(systemName: "person.crop.circle.fill.badge.plus")
                .renderingMode(.original)
                .foregroundColor(.blue)
                .font(.largeTitle)
        }
    }
}

#Preview {
    HowToRenderImagesUsingSFSymbols()
}
