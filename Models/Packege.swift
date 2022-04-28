//
//  Packege.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/26/22.
//

import Foundation

struct Packege: Identifiable {
    var id = UUID()
    var title: String
    var link: String
}

let packegeData = [
Packege(title: "Firebase", link: "https://github.com/firebase/firebase-ios-sdk"),
Packege(title: "SDWebImageSwiftUI", link: "https://github.com/SDWebImage/SDWebImageSwiftUI"),
Packege(title: "SwiftUI Trackable ScrollView", link: "https://github.com/maxnatchanon/trackable-scroll-view"),
Packege(title: "SwiftUIX", link: "https://github.com/SwiftUIX/SwiftUIX")
]
