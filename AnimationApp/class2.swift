//
//  class2.swift
//  AnimationApp
//
//  Created by kwon eunji on 12/5/23.
//

import SwiftUI


// overlay circle scale up and fade out continuousl
struct class2: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        //.scaleEffect(animationAmount)
        //.blur(radius: (animationAmount - 1 ) * 3)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
        //.animation(.default, value: animationAmount)
        //animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
    }
}

#Preview {
    class2()
}
