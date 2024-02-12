//
//  ShopView.swift
//  testbarber
//
//  Created by gio khukhia on 2/6/24.
//

import SwiftUI
struct ShopView: View {
    @State private var showAlert = false

    var body: some View {
        VStack {
            Spacer()

            Button(action: {
                self.showAlert = true
            }) {
                Text("Show Error")
                    .padding()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("This page is temporarily unavailable."), dismissButton: .default(Text("OK")))
            }

            Spacer()
        }
        .navigationBarHidden(true)
    }
}
