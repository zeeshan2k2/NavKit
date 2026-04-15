//
//  SheetDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct SheetDemoView: View {
    @State private var isShowingSheet = false
    @State private var isShowingTallSheet = false

    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "arrow.up.square", title: "Sheet", subtitle: "Modal bottom sheet presentation")

            DemoButton(label: "Present Sheet") {
                isShowingSheet = true
            }

            DemoButton(label: "Present Tall Sheet", style: .secondary) {
                isShowingTallSheet = true
            }
        }
        .padding()
        .navigationTitle("Sheet")
        .sheet(isPresented: $isShowingSheet) {
            SheetContent(title: "Default Sheet", message: "Drag down to dismiss.")
                .presentationDetents([.medium])
        }
        .sheet(isPresented: $isShowingTallSheet) {
            SheetContent(title: "Tall Sheet", message: "This one takes up the full screen.")
                .presentationDetents([.large])
        }
    }
}

struct SheetContent: View {
    @Environment(\.dismiss) var dismiss
    let title: String
    let message: String

    var body: some View {
        VStack(spacing: 20) {
            Capsule()
                .fill(Color.secondary.opacity(0.4))
                .frame(width: 40, height: 5)
                .padding(.top)

            Spacer()

            Image(systemName: "arrow.up.square")
                .font(.system(size: 44))
                .foregroundColor(.blue)

            Text(title).font(.title2).fontWeight(.bold)
            Text(message).foregroundColor(.secondary).multilineTextAlignment(.center)

            Spacer()

            DemoButton(label: "Dismiss") { dismiss() }
        }
        .padding()
    }
}
