//
//  ContentView.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
           TabBar()
        }
//        else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
//            
//            Text("iPhone Landscape")
//        }
        else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
            SideBar()
        }
    }
}

#Preview {
    ContentView()
}
