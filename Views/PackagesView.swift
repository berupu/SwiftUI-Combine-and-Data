//
//  PackagesView.swift
//  SwiftUI Combine and Data
//
//  Created by Ashraful Islam Rupu on 4/26/22.
//

import SwiftUI

struct PackagesView: View {
    var body: some View {
        ScrollView {
            ZStack(alignment: .top) {
                
                content
                    .padding(.top, 10)
            }
            .navigationTitle("SwiftUI Packages")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .edgesIgnoringSafeArea(.all)
        .padding()
        
    }
    
    var content: some View {
        VStack{
            Text("This are swiftui packages for the creators")
                .font(.subheadline)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
            
            ForEach(packegeData, id: \.id) { package in
                PackageRow(package: package)
            }
        }
    }
}

struct PackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}
