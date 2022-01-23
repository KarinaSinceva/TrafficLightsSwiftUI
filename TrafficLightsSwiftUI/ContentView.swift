//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Karina Sintceva on 22.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var CurrentValueLabel = "START"
    
    @State var opacity = 0.3
    @State var opacity2 = 0.3
    @State var opacity3 = 0.3
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red)
                    .opacity(opacity)
                ColorCircleView(color: .yellow)
                    .opacity(opacity3)
                ColorCircleView(color: .green)
                    .opacity(opacity2)
                Spacer()
                
                Button(action: { if CurrentValueLabel == "START" { CurrentValueLabel = "NEXT" }

                    switch currentLight {
                    case .red:
                        opacity2 = 0.3
                        opacity = 1
                        currentLight = .yellow
                    case .yellow:
                        opacity = 0.3
                        opacity3 = 1
                        currentLight = .green
                    case .green:
                        opacity2 = 1
                        opacity3 = 0.3
                        currentLight = .red
                    }
                    
                }) {
                    Text(CurrentValueLabel)
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
        }
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
