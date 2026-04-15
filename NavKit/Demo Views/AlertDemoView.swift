//
//  AlertDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct AlertDemoView: View {
    @State private var showBasicAlert = false
    @State private var showDestructiveAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "exclamationmark.triangle", title: "Alert", subtitle: "System alert dialogs")

            DemoButton(label: "Basic Alert") {
                showBasicAlert = true
            }

            DemoButton(label: "Destructive Alert", style: .secondary) {
                showDestructiveAlert = true
            }

            if !alertMessage.isEmpty {
                Text(alertMessage)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.top)
            }
        }
        .padding()
        .navigationTitle("Alert")
        .alert("Heads Up!", isPresented: $showBasicAlert) {
            Button("OK") { alertMessage = "Tapped OK" }
            Button("Cancel", role: .cancel) { alertMessage = "Tapped Cancel" }
        } message: {
            Text("This is a basic SwiftUI alert.")
        }
        .alert("Delete Item?", isPresented: $showDestructiveAlert) {
            Button("Delete", role: .destructive) { alertMessage = "Item deleted!" }
            Button("Cancel", role: .cancel) { alertMessage = "Cancelled deletion" }
        } message: {
            Text("This action cannot be undone.")
        }
    }
}
