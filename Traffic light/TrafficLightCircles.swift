//
//  TrafficLightCircles.swift
//  Traffic light
//
//  Created by Alena on 16.02.2023.
//

import SwiftUI

struct TrafficLightCircles: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
    }
}

struct TrafficLightCircles_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircles(color: Color.red, opacity: 0.5)
    }
}
