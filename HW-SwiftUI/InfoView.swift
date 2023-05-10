//
//  InfoView.swift
//  HW-SwiftUI
//
//  Created by Ульви Пашаев on 10.05.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post:post)
                }
            }
            .navigationTitle("Boxers")
            .listStyle(.plain)
                
        }
    }
}
