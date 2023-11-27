//
//  HowToDynamicallyAdjustTheColorOfAnSFSymbol.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 27/11/23.
//

import SwiftUI

struct HowToDynamicallyAdjustTheColorOfAnSFSymbol: View {
    @State private var value = 0.0
    
    var body: some View {
        Image(systemName: "wifi", variableValue: 0.5)
        
        VStack {
            HStack {
                Image(systemName: "aqi.low", variableValue: value)
                Image(systemName: "wifi", variableValue: value)
                Image(systemName: "chart.bar.fill", variableValue: value)
                Image(systemName: "waveform", variableValue: value)
            }
            
            Slider(value: $value)
        }
        .font(.system(size: 72))
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

#Preview {
    HowToDynamicallyAdjustTheColorOfAnSFSymbol()
}
