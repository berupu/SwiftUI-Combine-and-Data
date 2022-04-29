//
//  SwiftUI_Combine_and_DataApp.swift
//  Shared
//
//  Created by Ashraful Islam Rupu on 4/26/22.
//

import SwiftUI
import Firebase

@main
struct SwiftUI_Combine_and_DataApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
