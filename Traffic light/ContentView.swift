//
//  ContentView.swift
//  Traffic light
//
//  Created by Alena on 16.02.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
        VStack(spacing: 100) {
            VStack(spacing: 20) {
                TrafficLightCircles(color: .red, opacity: currentLight == .red ? 1.0 : 0.3)
                TrafficLightCircles(color: .yellow, opacity: currentLight == .yellow ? 1.0 : 0.3)
                TrafficLightCircles(color: .green, opacity: currentLight == .green ? 1.0 : 0.3)
            }
            TrafficLightButton(title: buttonTitle, action: {
                if buttonTitle == "Start" {
                    buttonTitle = "Next"
                }
                nextColor()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
