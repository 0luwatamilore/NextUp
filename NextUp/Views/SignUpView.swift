//
//  SignUpView.swift
//  NextUp
//
//  Created by Tamilore Oladejo on 4/11/25.
//

import SwiftUI

struct SignUpView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @ObservedObject var authViewModel: AuthViewModel
    @State private var errorMessage: String = ""
    @State private var firstname: String = ""
    @State private var lastname: String = ""
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Sign Up").font(.largeTitle).bold().padding()
            
            TextField("Enter your firstname", text: $firstname)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical, 5)
            TextField("Enter your lastname", text: $lastname)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical, 5)
            TextField("Enter your email", text: $email)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical, 5)
            TextField("Enter your username", text: $username)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical, 5)
            TextField("Enter your password", text: $password)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical, 5)
            HStack {
                Button("Register"){}.padding().font(.title2)
            }.buttonStyle(.bordered)
            
            Text("fnfnf")
        }
        .padding()
    }
}

#Preview {
    SignUpView(authViewModel: AuthViewModel())
}
