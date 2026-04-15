//
//  NavStackDemoView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct NavStackDemoView: View {
    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "rectangle.stack", title: "NavigationStack", subtitle: "Push views onto a stack")
            
            NavigationLink(destination: NavStackLevel(level: 2)) {
                Text("Push to Level 2")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
        .navigationTitle("Level 1")
    }
}

struct NavStackLevel: View {
    let level: Int
    
    var body: some View {
        VStack(spacing: 20) {
            DemoHeader(icon: "rectangle.stack", title: "Level \(level)", subtitle: "You pushed here from level \(level - 1)")
            
            if level < 5 {
                NavigationLink(destination: NavStackLevel(level: level + 1)) {
                    Text("Push to Level \(level + 1)")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            } else {
                Text("Max depth reached!")
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .navigationTitle("Level \(level)")
    }
}
