//
//  DatePickersView.swift
//  NRTestApp
//
//  Created by Mike Bruin on 3/12/25.
//

import SwiftUI
import NewRelic

struct DatePickersView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("Select a Date")
                .font(.headline)
                .padding()

            DatePicker("Choose a date:", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            Text("Selected Date: \(formattedDate(selectedDate))")
                .padding()

            DatePicker("Choose a time:", selection: $selectedDate, displayedComponents: [.hourAndMinute])
                .datePickerStyle(WheelDatePickerStyle())
                .padding()

            Text("Selected Time: \(formattedTime(selectedDate))")
                .padding()
        }
        .navigationTitle("Date Pickers")
        .NRTrackView(name: "DatePickersView")
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
    
    private func formattedTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

struct DatePickersView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickersView()
    }
}
