//
//  HowToDisplaySolidShapes.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToDisplaySolidShapes: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle().fill(.red).frame(width: 100, height: 100)
            
            Circle().fill(.blue).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            
            Capsule().fill(.green).frame(width: 150, height: 100)
        }
        
    }
}

#Preview {
    HowToDisplaySolidShapes()
}
