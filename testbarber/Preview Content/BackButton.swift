//
//  BackButton.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import Foundation
import SwiftUI
import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)

                Text("Back")
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}
