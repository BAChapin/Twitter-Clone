//
//  Home.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/12/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack {
                TabView {
                    FeedView()
                        .tabItem {
                            Image("Home")
                        }
                    
                    SearchView()
                        .tabItem {
                            Image("Search")
                        }
                    
                    NotificationsView()
                        .tabItem {
                            Image("Notifications")
                        }
                    
                    MessagesView()
                        .tabItem {
                            Image("Messages")
                        }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
