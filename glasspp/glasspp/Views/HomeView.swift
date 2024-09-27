//
//  HomeView.swift
//  glasspp
//
//  Created by Zack Nguyen on 9/26/24.
//

import SwiftUI

struct Event: Identifiable {
    var id = UUID()        // Unique ID for each event
    var name: String       // Name of the event
    var date: Date         // Date of the event
    var money: Int
    var location: String   // Location of the event
}


struct HomeView: View {
    @State private var events = [
            Event(name: "Tech Conference 2024", date: Date().addingTimeInterval(86400 * 7),
                  money: 1000, location: "San Francisco, CA"),
            Event(name: "CSR Volunteering MetroTech", date: Date().addingTimeInterval(86400 * 14), money: 550, location: "Austin, TX"),
            Event(name: "VIP Showcase", date: Date().addingTimeInterval(86400 * 30), money: 290, location: "New York, NY")
        ]
    var body: some View {
        NavigationView {
                    List(events) { event in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(event.name)
                                    .font(.headline)
                                Text("\(event.date, formatter: eventDateFormatter)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                Text("$\(event.money)")
                                    .font(.subheadline)
                                    .foregroundColor(.green)
                                Text(event.location)
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                            }
                            Spacer()
                            Image(systemName: "calendar")
                                .foregroundColor(.blue)
                        }
                        .padding(.vertical, 10)
                    }
                    .navigationTitle("Components Reminder")
                }
    }
}

private let eventDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    return formatter
}()

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
