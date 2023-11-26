//
//  HowToUseImagesAndOtherViewsAsABackgrounds.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToUseImagesAndOtherViewsAsABackgrounds: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hacking with Swift")
                .font(.system(size: 48))
                .padding(50)
            .background(Image("rome").resizable())
            
            Text("Hacking with Swift")
                .font(.largeTitle)
                .padding()
                .background(Circle().fill(.red).frame(width: 50))
            
            Text("Hacking with Swift")
                .font(.largeTitle)
                .padding()
                .background(Circle().fill(.red).frame(width: 100, height: 100)).clipped()
            
            Text("Hacking with Swift")
                .font(.system(size: 48))
                .padding(50)
            .background(Text("Ygor hacking"))
        }
    }
}

#Preview {
    HowToUseImagesAndOtherViewsAsABackgrounds()
}
