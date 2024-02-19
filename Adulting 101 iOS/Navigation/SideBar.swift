//
//  SideBar.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink(destination: DashboardView()) {
                    Label("Dashboard", systemImage: "square.grid.2x2")
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Adulting 101")
        } detail: {
            DashboardView()
        }

    }
}

#Preview {
    SideBar()
}
