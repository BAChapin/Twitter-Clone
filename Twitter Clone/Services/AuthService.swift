//
//  AuthService.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/17/24.
//

import Foundation
import SwiftUI

enum NetworkError: Error {
    case invalidURL
    case noData
    case invalidData
    case decodingError
}

enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
}

public class AuthService {
    
    static func register(email: String, username: String, password: String, name: String, _ completion: @escaping (_ result: Result<Data?, AuthenticationError>) -> Void) {
        let urlString = URL(string: "http://localhost:3000/users")
        
        makeRequest(urlString: urlString!, reqBody: ["email": email, "username": username, "password": password, "name": name]) { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(.invalidCredentials))
            }
        }
    }
    
    static func makeRequest(urlString: URL, reqBody: [String: Any], _ completion: @escaping (_ result: Result<Data?, NetworkError>) -> Void) {
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
            
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? Data {
                    completion(.success(data))
                }
            } catch {
                completion(.failure(.decodingError))
                print(error)
            }
        }
        
        task.resume()
    }
}
