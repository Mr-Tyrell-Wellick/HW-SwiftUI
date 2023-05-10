//
//  LogInView.swift
//  HW-SwiftUI
//
//  Created by Ульви Пашаев on 10.05.2023.
//

import SwiftUI

struct LogInView: View {

    @State var login: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack() {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 120)
            
            VStack(spacing: -0.5) {
                TextField("Email or phone", text: $login)
                    .modifier(Size())
                    .modifier(Style())
                
                SecureField("Password", text: $password)
                    .modifier(Size())
                    .modifier(Style())
            }
            
            .border(Color(UIColor.lightGray), width: 0.5)
            .cornerRadius(10)
            .padding(.bottom, 8)
            
            Button("Log In") {
                print("button pressed")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            
            .foregroundColor(.white)
            .background(Image("blue_pixel")
                .resizable())
            .cornerRadius(10)
            }
        .padding(20)
        }
    }

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
