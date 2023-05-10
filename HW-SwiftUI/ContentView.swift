//
//  ContentView.swift
//  HW-SwiftUI
//
//  Created by Ульви Пашаев on 10.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LogInView()
                .tabItem {
                    Label("Login", systemImage: "person")
                }
            InfoView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
