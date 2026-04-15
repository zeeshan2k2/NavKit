//
//  PopoverDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct PopoverDemoView: View {
    @State private var isShowing = false

    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "bubble.left", title: "Popover", subtitle: "Anchored overlay — best on iPad")

            DemoButton(label: "Show Popover") {
                isShowing = true
            }
            .popover(isPresented: $isShowing) {
                VStack(spacing: 16) {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 36))
                        .foregroundColor(.blue)
                    Text("Popover").font(.headline)
                    Text("On iPhone this looks like a sheet.\nOn iPad it's an anchored bubble.")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding(24)
                .presentationCompactAdaptation(.popover)
            }
        }
        .padding()
        .navigationTitle("Popover")
    }
}
