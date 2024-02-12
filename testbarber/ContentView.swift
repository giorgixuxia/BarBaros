//
//  ContentView.swift
//  testbarber
//
//  Created by gio khukhia on 2/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showImage = true

    var body: some View {
        NavigationView {
            ZStack {
                Color.black 
                if showImage {
                    Image("barbarosLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                withAnimation {
                                    showImage.toggle()
                                }
                            }
                        }
                } else {
                    OptionsView()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
