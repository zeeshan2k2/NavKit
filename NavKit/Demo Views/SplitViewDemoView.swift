//
//  SplitViewDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct SplitViewDemoView: View {
    @State private var selectedItem: String? = nil

    let items = ["Overview", "Architecture", "Lifecycle", "Performance", "Debugging"]

    var body: some View {
        List(items, id: \.self, selection: $selectedItem) { item in
            Label(item, systemImage: "doc.text")
        }
        .navigationTitle("Topics")
        .safeAreaInset(edge: .bottom) {
            if let selected = selectedItem {
                VStack(spacing: 12) {
                    Image(systemName: "doc.text")
                        .font(.system(size: 36))
                        .foregroundColor(.blue)
                    Text(selected)
                        .font(.title2).fontWeight(.bold)
                    Text("Detail content for \(selected) would go here.")
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(16)
                .padding()
            }
        }
    }
}
