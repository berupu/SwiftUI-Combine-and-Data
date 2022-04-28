//
//  ProfileRow.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/28/22.
//

import SwiftUI

struct ProfileRow: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16.0) {
            profilePicture
            
            VStack(alignment: .leading, spacing: 16) {
                Text("be Rupu")
                    .font(.title3)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .foregroundColor(.white)
                
                Text("View Profile")
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.7))
            }
            Spacer()
            
            glowIcon
        }
        .blurBackground()
    }
    
    var profilePicture: some View {
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
                .font(.system(size: 66))
                .angulerGradientGlow(colors: [Color.blue, Color.brown, Color.yellow,Color.red])
                .frame(width: 66, height: 66)
                .blur(radius: 10)
            
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 66, height: 66, alignment: .center)
                    .cornerRadius(50)
            }
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
        }
    }
    
    var glowIcon: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [Color.purple,Color.purple]), center: .center, startAngle: .init(degrees: -190), endAngle: .degrees(155))
                .blur(radius: 8)
                .shadow(radius: 30)
                .frame(width: 36, height: 36)
            
            Image(systemName: "square.stack.fill")
                .linearGradientBackground(colors: [Color.yellow,Color.yellow])
                .frame(width: 36, height: 36)
                .background(Color.purple.opacity(0.8))
                .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(Color.white.opacity(0.7), lineWidth: 1).blendMode(.overlay))
        }
    }
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow()
    }
}
