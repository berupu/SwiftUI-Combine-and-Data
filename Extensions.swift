//
//  Extensions.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/28/22.
//

import SwiftUI

extension View {
    func angulerGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(colors: colors, center: .center, angle: .degrees(0.0)))
            .mask(self)
    }
    
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
    
    func blurBackground() -> some View {
        self.padding(16)
            .background(Color.gray)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 1).blendMode(.overlay))
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        
    }
}
