//
//  NavItem.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation

enum NavType: String, CaseIterable, Hashable {
    case navigationStack    = "NavigationStack"
    case sheet              = "Sheet"
    case fullScreenCover    = "FullScreenCover"
    case tabView            = "TabView"
    case alert              = "Alert"
    case confirmationDialog = "ConfirmationDialog"
    case popover            = "Popover"
    case splitView          = "NavigationSplitView"
}

struct NavItem: Identifiable, Hashable {
    let id = UUID()
    let type: NavType
    let icon: String

    var title: String { type.rawValue }
}
