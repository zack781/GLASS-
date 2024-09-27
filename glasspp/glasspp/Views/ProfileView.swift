//
//  ProfileView.swift
//  glasspp
//
//  Created by Zack Nguyen on 9/26/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var studentName: String = ""
    @State private var studentAge: String = ""
    @State private var studentMajor: String = ""
    @State private var studentID: String = ""
    @State private var status: String = "Freshman"
    @State private var goal: String = "Goal: Software Engineer"
    @State private var selectedEnrollmentDate = Date()
    
    var body: some View {
        NavigationView {
                    Form {
                        Section(header: Text("Student Information")) {
                            // TextField for Name
                            TextField("Name", text: $studentName)
                                .padding(.vertical, 10)
                            
                            // TextField for Age (with numeric keyboard)
                            TextField("Age", text: $studentAge)
                                .keyboardType(.numberPad)
                                .padding(.vertical, 10)
                            
                            // TextField for Major
                            TextField("Major", text: $studentMajor)
                                .padding(.vertical, 10)
                            
                            // TextField for Student ID
                            TextField("Student ID", text: $studentID)
                                .padding(.vertical, 10)
                            
                            TextField("Status", text: $status)
                                .padding(.vertical, 10)
                            TextField("Goal", text: $goal)
                                .padding(.vertical, 10)
                            
                            // DatePicker for Enrollment Date
                            DatePicker("Enrollment Date", selection: $selectedEnrollmentDate, displayedComponents: .date)
                                .padding(.vertical, 10)
                        }
                        
                        // Submit Button
                        Button(action: {
                            
                        }) {
                            Text("Submit")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                    .navigationTitle("Student Profile")
                }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
