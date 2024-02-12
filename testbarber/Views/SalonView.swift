//
//  SalonView.swift
//  testbarber
//
//  Created by gio khukhia on 2/6/24.
//
import SwiftUI



    struct SalonView: View {
        @Environment(\.presentationMode) var presentationMode

        let salons = [
            Salon(name: "Oldboy Barbershop", imageName: "Oldboy", review: "4.5 stars"),
            Salon(name: "Clippers Barbershop", imageName: "Clippers", review: "4.2 stars"),
            Salon(name: "A’meus Barbershop", imageName: "Mafia", review: "4.8 stars"),
            Salon(name: "Brothers Barbershop", imageName: "Brothers", review: "4.0 stars"),
            Salon(name: "Barbershop IGNITE", imageName: "Ignite", review: "4.3 stars")
        ]

        var body: some View {
            NavigationView {
                List(salons) { salon in
                    NavigationLink(destination: SalonDetailView(salon: salon)) {
                        SalonRow(salon: salon)
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
