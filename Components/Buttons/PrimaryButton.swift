//
//  PrimaryButton.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/28/22.
//

import SwiftUI

struct PrimaryButton: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var text: String = "Contact support"
    
    @AppStorage("isLiteMode") var isLiteMode : Bool = false
    
    
    var body: some View {
        if colorScheme == .light{
            lightModeButton
        }else {
            darkModeButton
        }
    }
    
    var lightModeButton: some View {
        VStack {
            Text(text)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .foregroundColor(.white)
    }
    
    var darkModeButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 50)
                .angulerGradientGlow(colors: [Color.blue, Color.pink,Color.cyan,Color.brown])
                .forLiteMode(!isLiteMode) { view in
                    view.blur(radius: 8)
                }
            
            Text(text)
                .linearGradientBackground(colors: [Color.blue, Color.cyan])
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.mint).opacity(0.9)
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1).blendMode(.overlay))
        }
        .frame(height: 50)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
