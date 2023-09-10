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
        Button("Tap me") {
            animationValue += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationValue)
                .opacity(2 - animationValue)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationValue
                )
        )
        .onAppear {
            animationValue = 2
        }
//        .scaleEffect(animationValue)
//        .blur(radius: (animationValue - 1) * 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
