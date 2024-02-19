//
//  ContentView.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    @AppStorage("selectedTab") var selectedTab: Tab = .dashboard
    @AppStorage("showAccount") var showAccount = false
    
    init() {
        showAccount = false
    }
    
    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case .dashboard:
                    DashboardView()
                case .explore:
                    ExploreView()
                case .notifications:
                    NotificationsView()
                case .library:
                    LibraryView()
                }
            }
            .safeAreaInset(edge: .bottom) {
                VStack {}.frame(height: 44)
            }
            
            TabBar()
            
            if model.showModal {
                ModalView()
                    .accessibilityIdentifier("Identifier")
            }
        }
        .dynamicTypeSize(.large ... .xxLarge)
        .sheet(isPresented: $showAccount) {
            AccountView()
        }
    }
}

#Preview {
    ContentView()
}
