//
//  PackageRow.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/26/22.
//

import SwiftUI

struct PackageRow: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var package: Packege
    
    var body: some View {
        VStack(alignment: .leading) {
            Link(destination: URL(string: package.link)!) {
                LinearGradient(gradient: Gradient(colors: colorScheme == .dark ? [Color.blue, Color.purple] : [Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 20)
                    .mask(
                        Text(package.title)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .textCase(.uppercase)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    )
            }
            Divider()
        }
    }
}

struct PackageRow_Previews: PreviewProvider {
    static var previews: some View {
        PackageRow(package: packegeData[0])
    }
}
