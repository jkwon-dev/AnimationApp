//
//  Tutorial4.swift
//  AnimationApp
//
//  Created by kwon eunji on 12/5/23.
//

import SwiftUI

// 수직으로 고정, 회전
struct Tutorial4: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationAmount),
                          axis: (x:0, y: 1, z:0))
    }
}

#Preview {
    Tutorial4()
}
