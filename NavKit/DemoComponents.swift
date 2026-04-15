//
//  DemoComponents.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

// MARK: - Header
struct DemoHeader: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.system(size: 50))
                .foregroundColor(.blue)
            Text(title).font(.title2).fontWeight(.bold)
            Text(subtitle).font(.subheadline).foregroundColor(.secondary)
        }
        .padding(.bottom, 10)
    }
}

// MARK: - Button
enum DemoButtonStyle { case primary, secondary }

struct DemoButton: View {
    let label: String
    var style: DemoButtonStyle = .primary
    var action: (() -> Void)? = nil

    var body: some View {
        Button {
            action?()
        } label: {
            Text(label)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(style == .primary ? Color.blue : Color(.secondarySystemBackground))
                .foregroundColor(style == .primary ? .white : .primary)
                .cornerRadius(12)
        }
    }
}
