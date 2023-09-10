//
//  ContentView.swift
//  Animations
//
//  Created by Rishi Singh on 10/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationValue = 1.0
    var body: some View {
        print(animationValue)
        return VStack {
            Stepper("Scale Amount", value: $animationValue.animation(
                .easeInOut(duration: 1).repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            Button("Tap Me") {
                animationValue += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
