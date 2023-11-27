//
//  HowToGetCustomColorsAndTransparencyWithSFSymbols.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToGetCustomColorsAndTransparencyWithSFSymbols: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "theatermasks")
                .font(.system(size: 60))
            
            Image(systemName: "theatermasks")
                .symbolRenderingMode(.hierarchical)
                .font(.system(size: 60))
            
            Image(systemName: "theatermasks")
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.blue)
                .font(.system(size: 60))
            
            Image(systemName: "theatermasks")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .red)
                .font(.system(size: 60))
            
            Image(systemName: "shareplay")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .black)
                .font(.system(size: 60))
            
            Image(systemName: "shareplay")
                .font(.system(size: 60))
            
            Image(systemName: "person.3.sequence.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .green, .red)
                .font(.system(size: 60))
            
            Image(systemName: "person.3.sequence.fill")
                .symbolRenderingMode(.palette)
                .foregroundStyle(
                    .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing),
                    .linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottomTrailing),
                    .linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottomTrailing)
                )
            
                .font(.system(size: 60))

        }
    }
}

#Preview {
    HowToGetCustomColorsAndTransparencyWithSFSymbols()
}
