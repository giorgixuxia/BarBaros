//
//  TatooRow.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import SwiftUI

struct TatooRow: View {
    var tatoo: Tatoo

    var body: some View {
        VStack {
            GeometryReader { geometry in
                Image(tatoo.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width)
                    .clipped()
                    .cornerRadius(15)
            }
            
            Text(tatoo.name)
                .font(.title)
                .foregroundColor(.yellow)
                .padding()

            Text("Review: \(tatoo.review)")
                .foregroundColor(.yellow)
                .padding()

            Divider()
                .background(Color.white)
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}
