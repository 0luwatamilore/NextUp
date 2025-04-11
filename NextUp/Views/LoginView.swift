//
//  SwiftUIView.swift
//  NextUp
//
//  Created by Tamilore Oladejo on 4/11/25.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Login").font(.largeTitle).bold().padding()
            
            TextField("Enter your username", text: $username)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical)

            TextField("Enter your password", text: $password)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10)

            // Simulate login
            // TODO: create logic for sign-in once backend is done.
            HStack {
                Button("Sign In") {
                    if !username.isEmpty && !password.isEmpty {
                        isLoggedIn = true
                    }
                }.padding()
            }
            .buttonStyle(.bordered)
            
            // TODO: change to button once ready to implement feature.
            Text("forgot password?").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            HStack {
                Text("don't have a account yet?")
                Text("Sign Up").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }.padding()
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
