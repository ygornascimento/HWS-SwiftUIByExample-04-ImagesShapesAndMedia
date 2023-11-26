//
//  HowToAdjustTheWayAnImageIsFittedToItsSpace.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToAdjustTheWayAnImageIsFittedToItsSpace: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("rome")
                .resizable()
                .frame(width: 300,height: 100)
            
            Image("rome")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
            
            Image("rome")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250)
                       
        }
    }
}

#Preview {
    HowToAdjustTheWayAnImageIsFittedToItsSpace()
}
