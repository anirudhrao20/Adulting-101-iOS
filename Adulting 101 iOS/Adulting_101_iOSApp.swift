//
//  Adulting_101_iOSApp.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

@main
struct Adulting_101_iOSApp: App {
    
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
