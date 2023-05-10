//
//  Modifiers.swift
//  HW-SwiftUI
//
//  Created by Ульви Пашаев on 10.05.2023.
//

import SwiftUI

struct Size: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
    }
}

struct Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading, 12)
            .border(Color(UIColor.lightGray), width: 0.5)
            .background(Color(.systemGray6))
    }
}
