//
//  CertificatesView.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/29/22.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM =  CertificateViewModel()
    
    @State private var selection: Int = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(certificateVM.certificates.indices, id: \.self) { index in
                    CertificateCard(selection: $selection)
                        .padding(.horizontal, 8)
                        .environmentObject(certificateVM)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
        }
        .background(Color.white)
    }
}

struct CertificatesView_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView()
            .environment(\.colorScheme, .dark)
    }
}
