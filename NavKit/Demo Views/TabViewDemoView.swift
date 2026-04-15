//
//  TabViewDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct TabViewDemoView: View {
    var body: some View {
        TabView {
            TabPage(icon: "house", title: "Home", color: .blue)
                .tabItem { Label("Home", systemImage: "house") }

            TabPage(icon: "magnifyingglass", title: "Search", color: .green)
                .tabItem { Label("Search", systemImage: "magnifyingglass") }

            TabPage(icon: "bell", title: "Notifications", color: .orange)
                .tabItem { Label("Alerts", systemImage: "bell") }

            TabPage(icon: "person", title: "Profile", color: .purple)
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

struct TabPage: View {
    let icon: String
    let title: String
    let color: Color

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 50))
                .foregroundColor(color)
            Text(title)
                .font(.title2).fontWeight(.semibold)
            Text("This is the \(title) tab.")
                .foregroundColor(.secondary)
        }
    }
}
