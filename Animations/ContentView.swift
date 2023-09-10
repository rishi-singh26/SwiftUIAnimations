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
        .scaleEffect(animationValue)
        .blur(radius: (animationValue - 1) * 2)
        .animation(.default, value: animationValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
