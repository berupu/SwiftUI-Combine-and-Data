//
//  GradientIcon.swift
//  SwiftUI Combine and Data
//
//  Created by Ashraful Islam Rupu on 4/26/22.
//

import SwiftUI

struct GradientIcon: View {
    
    var icon: String = "questionmark"
    var body: some View {
        LinearGradient(colors: [Color.purple,Color.cyan], startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask(Image(systemName: icon).font(.system(size: 17)))
            .background(Color.yellow.opacity(0.5))
            .frame(width: 36, height: 36)
            .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(lineWidth: 1).foregroundColor(.white).blendMode(.overlay))
    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
