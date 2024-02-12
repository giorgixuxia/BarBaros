//
//  TatooDetailView.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import Foundation
import SwiftUI

struct TatooDetailView: View {
    var tatoo: Tatoo

    var body: some View {
        NavigationView {
            VStack {
                Image(tatoo.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                Text(tatoo.name)
                    .font(.title)
                    .padding()
                    

                Text("Review: \(tatoo.review)")
                    .padding()

                Spacer()

                NavigationLink(destination: DateChooserView()) {
                    Text("Make an Appointment")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()

                Spacer()

              
            }
           
        }
    }
}

