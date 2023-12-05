//
//  class3.swift
//  AnimationApp
//
//  Created by kwon eunji on 12/5/23.
//

import SwiftUI

struct class3: View {
    @State private var animationAmount = 1.0
    var body: some View {
        print(animationAmount)
        
        return VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(
                .easeInOut(duration: 2)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    class3()
}
