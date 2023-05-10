//
//  SettingsView.swift
//  HW-SwiftUI
//
//  Created by Ульви Пашаев on 10.05.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State var pushOn = false
    @State var darkTheme = false
    
    @State var sliderValue = 50.0
    @State private var isChanging = false
    
    var body: some View {
        
        Form {
            Section {
                Toggle("Push Notifications", isOn: $pushOn)
                Toggle("Dark Theme", isOn: $darkTheme)
            }
            
            Section {
                Slider(value: $sliderValue, in: 0...100) { changed in
                    isChanging = changed
                }
                Text("Progress value: \(Int(sliderValue))")
                    .foregroundColor(.secondary)
            }
            
                Section {
                    VStack(alignment: .leading) {
                        Text("\(isChanging ? "Good" : "Bad")")
                            .font(.title2)
                            .foregroundColor(isChanging ? .blue : .red)
                            Text("Font: Footnote style")
                            .font(.footnote)
                            .padding(.top)

                    }
                }
            }
        }
    }

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
