//
//  WelcomeView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/15/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    
                    Image("Twitter")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 20, height: 20)
                    
                    Spacer()
                }
                
                Spacer()
                
                Text("See what's happening in the world right now.")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: self.getRect().width * 0.9, alignment: .center)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 20) {
                    Button {
                        
                    } label: {
                        HStack(spacing: -4) {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Google")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundStyle(.black)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                    }
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: -4) {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Apple")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundStyle(.black)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                    }
                    
                    HStack {
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: self.getRect().width * 0.35, height: 1)
                        
                        Text("Or")
                            .foregroundStyle(.gray)
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: self.getRect().width * 0.35, height: 1)
                    }
                    
                    NavigationLink {
                        RegisterView()
                            .navigationBarHidden(true)
                    } label: {
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color("Twitter Blue"))
                            .frame(width: 320, height: 60)
                            .overlay(
                                Text("Create account")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .foregroundStyle(.white)
                                    .padding()
                            )
                    }
                }
                .padding()
                
                VStack(alignment: .leading) {
                    VStack {
                        Text("By signing up, you agree to our ")
                        
                        +
                        
                        Text("Terms")
                            .foregroundStyle(Color("Twitter Blue"))
                        
                        +
                        
                        Text(", ")
                        
                        +
                        
                        Text("Privacy Policy")
                            .foregroundStyle(Color("Twitter Blue"))
                        
                        +
                        
                        Text(", ")
                        
                        +
                        
                        Text("Cookie Use")
                            .foregroundStyle(Color("Twitter Blue"))
                    }
                    .padding(.bottom)
                    
                    HStack(spacing: 2) {
                        Text("Have an account already?")
                        
                        NavigationLink {
                            LoginView()
                                .navigationBarHidden(true)
                        } label: {
                            Text("Log in")
                                .foregroundStyle(Color("Twitter Blue"))
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .navigationTitle("")
        }
    }
}

#Preview {
    WelcomeView()
}
