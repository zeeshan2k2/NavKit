//
//  ContentView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import SwiftUI

struct NavMenuView: View {

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    let items: [NavItem] = [
        NavItem(type: .navigationStack,    icon: "rectangle.stack"),
        NavItem(type: .sheet,              icon: "arrow.up.square"),
        NavItem(type: .fullScreenCover,    icon: "rectangle.fill"),
        NavItem(type: .tabView,            icon: "dock.rectangle"),
        NavItem(type: .alert,              icon: "exclamationmark.triangle"),
        NavItem(type: .confirmationDialog, icon: "list.bullet.rectangle"),
        NavItem(type: .popover,            icon: "bubble.left"),
        NavItem(type: .splitView,          icon: "sidebar.left"),
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {

                    Text("NavKit")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)

                    Text("Explore SwiftUI navigation patterns")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items) { item in
                            NavigationLink(value: item) {
                                NavMenuItemView(item: item)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
            .navigationDestination(for: NavItem.self) { item in
                destinationView(for: item)
            }
        }
    }

    @ViewBuilder
    private func destinationView(for item: NavItem) -> some View {
        switch item.type {
        case .navigationStack:    NavStackDemoView()
        case .sheet:              SheetDemoView()
        case .fullScreenCover:    FullScreenDemoView()
        case .tabView:            TabViewDemoView()
        case .alert:              AlertDemoView()
        case .confirmationDialog: ConfirmationDialogDemoView()
        case .popover:            PopoverDemoView()
        case .splitView:          SplitViewDemoView()
        }
    }
}
