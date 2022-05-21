//
//  CertificatesView.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/29/22.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM =  CertificateViewModel()
    @StateObject var networkReachability = NetworkRechability()
    @State private var selection: Int = 0
    
    var body: some View {
        VStack {
            if networkReachability.reachable {
                if certificateVM.certificates.count > 0 {
                    TabView(selection: $selection) {
                        ForEach(certificateVM.certificates, id: \.id) { certificate in
                            CertificateCard(selection: $selection)
                                .padding(.horizontal, 8)
                                .environmentObject(certificateVM)
                        }
                    }
                    .tabViewStyle(DefaultTabViewStyle())
                } else {
                    ProgressView()
                }
            } else {
                Text("Please connect to the internet to see your certificate.")
                    .multilineTextAlignment(.center)
                    .padding()
            }
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
