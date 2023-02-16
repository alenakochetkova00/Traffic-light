//
//  TrafficLightButton.swift
//  Traffic light
//
//  Created by Alena on 16.02.2023.
//

import SwiftUI

struct TrafficLightButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
        }
        
        .bold()
        .buttonStyle(.borderedProminent)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct TrafficLightButton_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightButton(title: "Start", action: {})
    }
}
