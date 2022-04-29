//
//  Certificate.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 4/29/22.
//

import Foundation

struct Certificate: Identifiable, Decodable {
    var id: String
    var course: String
    var date: String
    var logo: String
    var instructor: String
}

