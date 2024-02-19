//
//  Tab.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

struct TabItem: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var color: Color
    var selection: Tab
}

var tabItems = [
    TabItem(name: "Dashboard", icon: "square.grid.2x2", color: .teal, selection: .dashboard),
    TabItem(name: "Explore", icon: "magnifyingglass", color: .yellow, selection: .explore),
    TabItem(name: "Notifications", icon: "bell", color: .red, selection: .notifications),
    TabItem(name: "Library", icon: "rectangle.stack", color: .pink, selection: .library)
]

enum Tab: String {
    case dashboard
    case explore
    case notifications
    case library
}
