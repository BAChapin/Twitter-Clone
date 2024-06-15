//
//  LoginView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/15/24.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var email = ""
    @State var password = ""
    @State var emailDone = false
    
    var body: some View {
        if !emailDone {
            VStack {
                VStack {
                    ZStack {
                        HStack {
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Text("Cancel")
                                    .foregroundStyle(.blue)
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Image("Twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 20, height: 20)
                    }
                    
                    Text("To get started first enter your phone, email, or @username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    CustomAuthTextField(placeholder: "Phone, email, or username", text: $email)
                }
                
                Spacer()
                
                VStack {
                    Button {
                        if !email.isEmpty {
                            emailDone.toggle()
                        }
                    } label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color("Twitter Blue"))
                            .overlay(
                                Text("Next")
                                    .foregroundStyle(.white)
                            )
                    }
                    
                    Text("Forgot Password?")
                        .foregroundStyle(.blue)
                    
                }
            }
        } else {
            VStack {
                VStack {
                    ZStack {
                        HStack {
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Text("Cancel")
                                    .foregroundStyle(.blue)
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        Image("Twitter")
                            .resizable()
                            .scaledToFill()
                            .padding(.trailing)
                            .frame(width: 20, height: 20)
                    }
                    
                    Text("Enter your password")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    SecureAuthTextField(placeholder: "Password", text: $password)
                }
                
                Spacer()
                
                VStack {
                    Button {
                        
                    } label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color("Twitter Blue"))
                            .overlay(
                                Text("Login")
                                    .foregroundStyle(.white)
                            )
                    }
                    
                    Text("Forgot Password?")
                        .foregroundStyle(.blue)
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
