//
//  HowToRenderAGradient.swift
//  SwiftUIByExample-04-ImagesShapesAndMedia
//
//  Created by Ygor Nascimento on 26/11/23.
//

import SwiftUI

struct HowToRenderAGradient: View {
    var body: some View {
//        Rectangle().fill(.blue.gradient)
        VStack(spacing: 20) {
            Text("Hello World")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
            )
            
            Text("Hello World")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    LinearGradient(
                        gradient: 
                            Gradient(colors: [.white, .red, .black]),
                        startPoint: .top, endPoint: .bottom)
                )
            
            Text("Hello World")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
                .background(
                    LinearGradient(
                        gradient:
                            Gradient(colors: [.white, .red, .black]),
                        startPoint: .leading, endPoint: .trailing)
                )
            
            Circle()
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .red]), center: .center, startRadius: 50, endRadius: 100)
                ).frame(width: 200, height: 200)
            
            Circle()
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .purple, .red]), center: .center)
                ).frame(width: 200)
            
            Circle()
                .strokeBorder(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)), lineWidth: 30)
        }
    }
}

#Preview {
    HowToRenderAGradient()
}
