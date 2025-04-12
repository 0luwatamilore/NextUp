//
//  AuthViewModel.swift
//  NextUp
//
//  Created by Tamilore Oladejo on 4/12/25.
//

import Foundation

class AuthViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    @Published var isError: Bool = false

    // TODO: complete login logic
    func login(username: String, password: String)
    {
        guard (!username.isEmpty || !password.isEmpty) else
        {
            isError = true
            errorMessage = "Error: Please make sure to fill all fields"
            return
        }
        
        errorMessage = ""
        isError = false
    }
    
    // TODO: complete register logic
    func register(firstname: String, lastname: String, email: String, username: String, password: String)
    {
        guard (!firstname.isEmpty || !lastname.isEmpty || !email.isEmpty || !username.isEmpty || !password.isEmpty) else
        {
            isError = true
            errorMessage = "Error: Please make sure to fill all fields"
            return
        }
        
        errorMessage = ""
        isError = false
    }
    
    // TODO: complete logout logic
    func logout() {}
    
}

