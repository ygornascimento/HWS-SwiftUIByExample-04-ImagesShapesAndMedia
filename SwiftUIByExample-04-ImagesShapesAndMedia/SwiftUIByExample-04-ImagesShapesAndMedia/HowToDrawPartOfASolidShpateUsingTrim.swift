//
//  HowToDrawPartOfASolidShpateUsingTrim.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToDrawPartOfASolidShpateUsingTrim: View {
    @State private var completionAmount = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .trim(from: 0, to: 0.5)
            .frame(width: 200, height: 200)
            
            Rectangle()
                .trim(from: 0, to: completionAmount)
                .stroke(.red, lineWidth: 20)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(-90))
                .onReceive(timer) { _ in
                    withAnimation {
                        if completionAmount == 1 {
                            completionAmount = 0
                        } else {
                            completionAmount += 0.2
                        }
                    }
                }
            
            
        }
    }
}

#Preview {
    HowToDrawPartOfASolidShpateUsingTrim()
}
