//
//  Class1.swift
//  AnimationApp
//
//  Created by kwon eunji on 12/5/23.
//

import SwiftUI

struct Class1: View {
    @State private var animationAmount = 1.0
    
    
    // 버튼 누를 때마다 커짐
    // animation - 부드럽게 변함
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1 ) * 3)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    Class1()
}
