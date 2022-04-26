//
//  ContentView.swift
//  Shared
//
//  Created by Ashraful Islam Rupu on 4/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack(alignment: .top) {
                    content
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .navigationBarHidden(true)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.opacity(0.5))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    var content: some View {
        VStack {
            VStack{
                NavigationLink(destination: FAQViews()) {
                    MenuRow()
                }
                
                divider
                
                NavigationLink(destination: PackagesView()) {
                    MenuRow(title: "SwiftUI packages", leftIcon: "square.stack.3d.up.fill")
                }
                
                
                divider
                Link(destination: URL(string: "https://www.youtube.com/Rupu7")!) {
                    MenuRow(title: "Youtube Channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
                }
            }
            .padding(16)
            .background(Color.blue)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 1).blendMode(.overlay))
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(.top, 20)
            
            Text("Version 1.00")
                .foregroundColor(.white.opacity(0.7))
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
            
        }
        .foregroundColor(.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
    }
    
    var divider: some View {
        Divider().background(Color.white.blendMode(.overlay))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
