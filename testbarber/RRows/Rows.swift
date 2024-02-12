//
//  Rows.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import SwiftUI

struct SalonRow: View {
    var salon: Salon

    var body: some View {
        VStack {
            GeometryReader { geometry in
                Image(salon.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width)
                    .clipped()
                    .cornerRadius(15)
            }
            
            Text(salon.name)
                .font(.title)
                .foregroundColor(.white)
                .padding()

            Text("Review: \(salon.review)")
                .foregroundColor(.white)
                .padding()

            Divider()
                .background(Color.white)
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}
