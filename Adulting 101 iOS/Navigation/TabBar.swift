//
//  TabBar.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationStack {
                DashboardView()
            }
            .tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Dashboard")
            }
        }
    }
}

#Preview {
    TabBar()
}
