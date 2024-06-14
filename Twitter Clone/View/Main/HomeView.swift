//
//  Home.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedIndex = 0
    @State var tweetText = ""
    @State var showCreateTweet = false
    
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    FeedView()
                        .tag(0)
                        .onTapGesture {
                            selectedIndex = 0
                        }
                        .tabItem {
                            if selectedIndex == 0 {
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Home")
                            }
                        }
                    
                    SearchView()
                        .tag(1)
                        .onTapGesture {
                            selectedIndex = 1
                        }
                        .tabItem {
                            if selectedIndex != 1 {
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Search")
                            }
                        }
                    
                    NotificationsView()
                        .tag(2)
                        .onTapGesture {
                            selectedIndex = 2
                        }
                        .tabItem {
                            if selectedIndex != 2 {
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Notifications")
                            }
                        }
                    
                    MessagesView()
                        .tag(3)
                        .onTapGesture {
                            selectedIndex = 3
                        }
                        .tabItem {
                            if selectedIndex != 3 {
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Messages")
                            }
                        }
                }
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            showCreateTweet.toggle()
                        }, label: {
                            Image("Tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                }
                .padding(.bottom, 65)
            }
            .sheet(isPresented: $showCreateTweet, content: {
                CreateTweetView()
            })
        }
    }
}

#Preview {
    HomeView()
}
