//
//  SwiftUIView.swift
//  NextUp
//
//  Created by Tamilore Oladejo on 4/11/25.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @ObservedObject var authViewModel: AuthViewModel
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var goToSignUp: Bool = false
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Login").font(.largeTitle).bold().padding()
            
            TextField("Enter your username", text: $username)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.vertical)
            TextField("Enter your password", text: $password)
                .autocapitalization(.none).padding()
                .background(Color.gray.opacity(0.2)).cornerRadius(10)

            // TODO: create logic for sign-in once backend is done.
            HStack {
                Button("Sign In")
                {
                    authViewModel.login(username: self.username, password: self.password)
                }.padding()
            }
            .buttonStyle(.bordered)
            
            // TODO: implement logic for resetting password
            Button("forgot password?")
            {}.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            // TODO: implement logic for signup button
            HStack {
                Text("Don't have an account yet?")
                Button(action: {
                    self.username = ""
                    self.password = ""
                    self.goToSignUp = true
                }) {
                    Text("Register")
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                }

                NavigationLink(
                    destination: SignUpView(authViewModel: authViewModel),
                    isActive: $goToSignUp,
                    label: {
                        EmptyView()
                    }
                )
            }
        }.padding()
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(authViewModel: AuthViewModel())
    }
}
