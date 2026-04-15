//
//  ConfirmationDialogDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct ConfirmationDialogDemoView: View {
    @State private var isShowing = false
    @State private var selected = ""

    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "list.bullet.rectangle", title: "ConfirmationDialog", subtitle: "Action sheet style picker")

            DemoButton(label: "Show Dialog") {
                isShowing = true
            }

            if !selected.isEmpty {
                Text("Selected: \(selected)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .navigationTitle("ConfirmationDialog")
        .confirmationDialog("Choose an action", isPresented: $isShowing, titleVisibility: .visible) {
            Button("Save Draft")     { selected = "Save Draft" }
            Button("Share")          { selected = "Share" }
            Button("Delete", role: .destructive) { selected = "Delete" }
            Button("Cancel", role: .cancel) {}
        }
    }
}
