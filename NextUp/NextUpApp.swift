//
//  NextUpApp.swift
//  NextUp
//
//  Created by Tamilore Oladejo on 4/11/25.
//

import SwiftUI

@main
struct NextUpApp: App {
    // store user default information
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @StateObject var authViewModel: AuthViewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                ContentView()
            } else {
                LoginView(authViewModel: authViewModel)
            }
        }
    }
}
