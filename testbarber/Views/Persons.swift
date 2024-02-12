//
//  Persons.swift
//  testbarber
//
//  Created by gio khukhia on 2/7/24.
//
import SwiftUI

struct PersonsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false

    var body: some View {
        VStack {
            Spacer()

            Button(action: {
                self.showAlert = true
            }) {
                Text("ხარვეზია: იხილეთ პრობლემა")
                    .padding()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("ეს გვერდი დროებით მიუწვდომელია ბოდიშს გიხდით"), dismissButton: .default(Text("OK")) {
               
                    self.presentationMode.wrappedValue.dismiss()
                })
            }

            Spacer()
        }
        .navigationBarHidden(true)
    }
}
