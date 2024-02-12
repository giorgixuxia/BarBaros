//
//  OptionsView.swift
//  testbarber
//
//  Created by gio khukhia on 2/6/24.
import SwiftUI

struct OptionsView: View {
    @State private var isPersonsViewActive: Bool = false
    @State private var isMouseOverPersonIcon: Bool = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("BARBAROS") 
                        .foregroundColor(.white)
                        
                        .padding(.leading, 10)
                        

                    Spacer()

                    Button(action: {
                        isPersonsViewActive.toggle()
                    }) {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(isMouseOverPersonIcon ? .yellow : .white)
                            .onHover { over in
                                isMouseOverPersonIcon = over
                            }
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
                    .sheet(isPresented: $isPersonsViewActive, content: {
                        PersonsView()
                    })
                }
                .frame(height: 50)
                .background(Color.black)

                Spacer()

                NavigationLink(destination: SalonView()) {
                    Image("Salon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                }

                NavigationLink(destination: TattooParlorView()) {
                    Image("TatooSalon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                }

                NavigationLink(destination: ShopView()) {
                    Image("Shop")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 2))
                }

                Spacer()
            }
            .navigationBarHidden(true)
            .background(Color.black.ignoresSafeArea()) 
        }
        .accentColor(.white)
    }
}


struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
