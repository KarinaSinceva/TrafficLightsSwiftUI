//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Karina Sintceva on 22.01.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120, alignment: .center)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
