//
//  InfoRow.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import Foundation
import SwiftUI
struct InfoRow: View {
    var imageName: String
    var label: String
    var info: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue) // Set icon color as needed
                .padding(.trailing, 5)

            VStack(alignment: .leading, spacing: 5) {
                Text(label)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(info)
                    .foregroundColor(.white)
            }
        }
    }
}
