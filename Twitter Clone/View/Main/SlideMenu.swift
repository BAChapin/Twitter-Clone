//
//  SlideMenu.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct SlideMenu: View {
    
    @State var show = false
    
    private var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    private var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    ProfileImage(imageId: "logo")
                        .frame(width: 60, height: 60)
                    
                    HStack(alignment: .top, spacing: 12) {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Cam")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                            
                            Text("@cam_salta")
                                .foregroundStyle(.gray)
                            
                            HStack(spacing: 20) {
                                FollowView(count: 8, title: "Following")
                                
                                FollowView(count: 16, title: "Followers")
                            }
                            .padding(.top, 10)
                            
                            Divider()
                                .padding(.top, 10)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color("bg"))
                            
                        })
                    }
                    
                    VStack(alignment: .leading) {
                        ForEach(menuButtons, id: \.self) { item in
                            MenuButton(title: item)
                        }
                        
                        Divider()
                            .padding(.top)
                        
                        Button {
                            
                        } label: {
                            MenuButton(title: "Twitter Ads")
                        }
                        
                        Divider()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Settings and Privacy")
                                .foregroundStyle(.blue)
                        })
                        .padding(.top, 20)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Help Center")
                                .foregroundStyle(.black)
                        })
                        .padding(.top, 20)
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)

                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image("help")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                            })
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }, label: {
                                Image("barcode")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                            })
                        }
                    }
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading) {
                        Button {
                            
                        } label: {
                            Text("Create a new account")
                                .foregroundStyle(Color("bg"))
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Add an existing account")
                                .foregroundStyle(Color("bg"))
                        }

                        Spacer(minLength: 0)
                    }
                    .opacity(!show ? 1 : 0)
                    .frame(height: !show ? nil : 0)
                    
                }
                .padding(.horizontal, 20)
                .frame(width: width - 90)
                .background(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SlideMenu()
}
