//
//  NavMenuItemView.swift
//  NavKit
//
//  Created by Zeeshan Waheed on 01/04/2026.
//

import Foundation
import SwiftUI

struct NavMenuItemView: View {
    let item: NavItem

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: item.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)

            Text(item.title)
                .font(.headline)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.6)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, minHeight: 120)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}
