//
//  RequestView.swift
//  glasspp
//
//  Created by Zack Nguyen on 9/26/24.
//

import SwiftUI

struct RequestView: View {
    var balance = 5000;
    @State var window = "";
    @State var un_goal = "";
    @State var grand_challenge = ""
    @State var student_major = ""
    
    @State private var selectedDate = Date()
    @State var frequency = ""
    
    @State private var selection = "Daily"
        let colors = ["Daily", "Weekly", "Monthly"]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("GLASS Working Group")
            
            NavigationView {
                Form {
                    Section (header: Text("")) {
                        TextField(
                            "Window",
                            text: $window
                        )
                        
                        TextField(
                            "UN Goal",
                            text: $un_goal
                        )
                        
                        TextField(
                            "Grand Challenge",
                            text: $grand_challenge
                        )
//                        TextField(
//                            "Major",
//                            text: $student_major
//                        )
                        TextField(
                            "UN Goal",
                            text: $student_major
                        )
                        TextField(
                            "Grand Challenge",
                            text: $student_major
                        )
                        TextField(
                            "Career Interest",
                            text: $student_major
                        )
                        
                        TextField("Frequency", text: $frequency)
                        
                        DatePicker("Start Date", selection: $selectedDate, displayedComponents: .date)
                                                .padding(.vertical, 10)
                        
                        DatePicker("End Date", selection: $selectedDate, displayedComponents: .date)
                                                .padding(.vertical, 10)
                    
                        Picker("Frequency", selection: $selection) {
                                        ForEach(colors, id: \.self) {
                                            Text($0)
                                        }
                                    }
                
                    }
                }
            }
            
            Button("Submit", action: {
                
            }).padding(.vertical, 20)
        }
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView()
    }
}
