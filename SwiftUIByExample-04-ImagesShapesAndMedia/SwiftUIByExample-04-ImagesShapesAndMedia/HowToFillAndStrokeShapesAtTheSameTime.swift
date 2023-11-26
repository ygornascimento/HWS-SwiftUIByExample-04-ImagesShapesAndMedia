//
//  HowToFillAndStrokeShapesAtTheSameTime.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToFillAndStrokeShapesAtTheSameTime: View {
    var body: some View {
        Circle()
            .strokeBorder(.black, lineWidth: 20)
            .background(Circle().fill(.blue))
            .frame(width: 150, height: 150)
        
        ZStack {
            Circle()
                .fill(.red)
            
            Circle()
                .strokeBorder(.black, lineWidth: 20)
        }.frame(width: 150, height: 150)
    }
}

#Preview {
    HowToFillAndStrokeShapesAtTheSameTime()
}
