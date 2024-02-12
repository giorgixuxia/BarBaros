//
//  SalonDetailView.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import Foundation
import SwiftUI

struct SalonDetailView: View {
    var salon: Salon

    var body: some View {
        NavigationView {
            VStack {
                Image(salon.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                Text(salon.name)
                    .font(.title)
                    .padding()

                Text("Review: \(salon.review)")
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

