//
//  TattooParlorView.swift
//  testbarber
//
//  Created by gio khukhia on 2/6/24.
//

import Foundation
import SwiftUI



    struct TattooParlorView: View {
        @Environment(\.presentationMode) var presentationMode

        let tatoos = [
            Tatoo(name: "Ink Tattoo", imageName: "Ink", review: "4.5 stars"),
            Tatoo(name: "Dot Tatts", imageName: "Dot", review: "4.2 stars"),
            Tatoo(name: "Indico Tatts", imageName: "Indico", review: "4.8 stars"),
            Tatoo(name: "Eduard Fish", imageName: "Eduard", review: "4.0 stars"),
         
        ]

        var body: some View {
            NavigationView {
                List(tatoos) { tato in
                    NavigationLink(destination: TatooDetailView(tatoo: tato)) {
                        TatooRow(tatoo: tato)
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
