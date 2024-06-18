//
//  AuthViewModel.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/17/24.
//

import SwiftUI

class AuthViewModel: ObservableObject {
    
    
    
    func login() {
        
    }
    
    func register(name: String, username: String, email: String, password: String) {
        AuthService.register(email: email, username: username, password: password, name: name) { result in
            switch result {
            case .success(let data):
                guard let data = data,
                      let user = try? JSONDecoder().decode(User.self, from: data) else {
                    return
                }
                print(user)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    func logout() {
        
    }
}
