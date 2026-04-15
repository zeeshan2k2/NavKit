//
//  FullScreenDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct FullScreenDemoView: View {
    @State private var isPresented = false

    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "rectangle.fill", title: "FullScreenCover", subtitle: "Covers the entire screen, no peek")

            DemoButton(label: "Present Full Screen") {
                isPresented = true
            }
        }
        .padding()
        .navigationTitle("FullScreenCover")
        .fullScreenCover(isPresented: $isPresented) {
            FullScreenContent()
        }
    }
}

struct FullScreenContent: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()

            VStack(spacing: 24) {
                Image(systemName: "rectangle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)

                Text("Full Screen Cover")
                    .font(.title).fontWeight(.bold)
                    .foregroundColor(.white)

                Text("No sheet peek — total takeover.")
                    .foregroundColor(.white.opacity(0.8))
                    .multilineTextAlignment(.center)

                Button("Dismiss") { dismiss() }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 14)
                    .background(.white)
                    .foregroundColor(.blue)
                    .fontWeight(.semibold)
                    .cornerRadius(12)
            }
            .padding()
        }
    }
}
