//
//  ContentView.swift
//  glasspp
//
//  Created by Zack Nguyen on 8/4/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem() {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            RequestView()
                .tabItem() {
                    Image(systemName: "plus.circle.fill")
                    Text("Request")
                }
            ProfileView()
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
