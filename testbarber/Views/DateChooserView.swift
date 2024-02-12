//
//  DateChooserView.swift
//  testbarber
//
//  Created by gio khukhia on 2/12/24.
//

import SwiftUI

struct DateChooserView: View {
    @State private var selectedDate = Date()
    @State private var isDateSelected = false

    var body: some View {
        VStack {
            DatePicker(
                "Select a Date",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()

            Button(action: {
              
                saveDateToPersonHistory(selectedDate)

                isDateSelected = true
            }) {
                Text("Save Date")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            if isDateSelected {
                Text("Selected Date: \(formattedDate(selectedDate))")
                    .font(.title)
                    .padding()
            }
        }
        .navigationBarTitle("Choose a Date", displayMode: .inline)
    }

    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: date)
    }

    func saveDateToPersonHistory(_ date: Date) {
      
        print("Selected Date: \(formattedDate(date))")
    }
}
