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
    
    func register(reqBody: [String: Any]) {
        let urlString = URL(string: "http://localhost:3000/users")!
        let session = URLSession.shared
        var request = URLRequest(url: urlString)
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = "POST"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: reqBody, options: .prettyPrinted)
        } catch {
            print(error)
        }
        
        let task = session.dataTask(with: request) { data, res, err in
            guard err == nil else { return }
            
            guard let data = data else { return }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    // Nothing
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
    
    func logout() {
        
    }
}
