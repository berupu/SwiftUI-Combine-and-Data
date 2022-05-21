//
//  NotificationsRow.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/30/22.
//

import SwiftUI

struct NotificationsRow: View {
    @State private var subscribed: Bool = true
    
    var body: some View {
        Toggle(isOn: $subscribed) {
            HStack {
                GradientIcon(icon: "bell.fill")
                
                VStack(alignment: .leading) {
                    Text("Notify me of new content")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Maxx once a week")
                        .font(.caption2)
                        .opacity(0.2)
                }
            }
        }
        .toggleStyle(SwitchToggleStyle(tint: Color.blue))
    }
}

struct NotificationsRow_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsRow()
    }
}
