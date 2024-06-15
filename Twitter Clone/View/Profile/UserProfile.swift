//
//  UserProfile.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct UserProfile: View {
    
    @State var offset: CGFloat = 0
    @State var titleOffset: CGFloat = 0
    @State var tabBarOffset: CGFloat = 0
    @State var currentTab: String = "Tweets"
    @Namespace var animation
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                
                GeometryReader { proxy -> AnyView in
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY
                    }
                    
                    return AnyView(
                        ZStack {
                            Image("banner")
                                .resizable()
                                .scaledToFill()
                                .frame(width: self.getRect().width, height: minY > 0 ? 180 + minY : 180, alignment: .center)
                                .cornerRadius(0)
                            
                            BlurView()
                                .opacity(blurViewOpacity())
                            
                            VStack(spacing: 5) {
                                Text("Cam")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                
                                Text("150 tweets")
                                    .foregroundStyle(.white)
                            }
                            .offset(y: 120)
                            .offset(y: titleOffset > 100 ? 0 : -getTitleOffset())
                            .opacity(titleOffset < 100 ? 1 : 0)
                        }
                            .clipped()
                            .frame(height: minY > 0 ? 180 + minY : nil)
                            .offset(y: minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80)
                    )
                }
                .frame(height: 180)
                .zIndex(1)
                
                VStack {
                    HStack {
                        ProfileImage(imageId: "logo")
                            .frame(width: 75, height: 75)
                            .padding(8)
                            .background(.white)
                            .clipShape(Circle())
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .foregroundStyle(.blue)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(
                                    Capsule()
                                        .stroke(.blue, lineWidth: 1.5)
                                )
                        }
                    }
                    .padding(.top, -25)
                    .padding(.bottom, -20)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Cam")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(.primary)
                            
                            Text("150 tweets")
                                .foregroundStyle(.gray)
                            
                            Text("This is my bio.")
                            
                            HStack(spacing:5) {
                                Text("13")
                                    .foregroundStyle(.primary)
                                    .fontWeight(.semibold)
                                
                                Text("Followers")
                                    .foregroundStyle(.gray)
                                
                                Text("680")
                                    .foregroundStyle(.primary)
                                    .fontWeight(.semibold)
                                    .padding(.leading, 10)
                                
                                Text("Following")
                                    .foregroundStyle(.gray)
                            }
                        }
                        .overlay(alignment: .top, content: {
                            GeometryReader { proxy in
                                let minY = proxy.frame(in: .global).minY
                                
                                DispatchQueue.main.async {
                                    self.titleOffset = minY
                                }
                                
                                return Color.clear
                            }
                            .frame(width: 0, height: 0)
                        })
                        
                        Spacer(minLength: 0)
                    }
                    .padding(.horizontal, 5)
                    
                    VStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing:0) {
                                TabButton(title: "Tweets", currentTab: $currentTab, animation: animation)
                                
                                TabButton(title: "Tweets & Likes", currentTab: $currentTab, animation: animation)
                                
                                TabButton(title: "Media", currentTab: $currentTab, animation: animation)
                                
                                TabButton(title: "Likes", currentTab: $currentTab, animation: animation)
                            }
                        }
                        
                        Divider()
                    }
                    .padding(.top, 30)
                    .background(.white)
                    .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
                    .overlay(alignment: .top, content: {
                        GeometryReader { proxy in
                            let minY = proxy.frame(in: .global).minY
                            
                            DispatchQueue.main.async {
                                self.tabBarOffset = minY
                            }
                            
                            return Color.clear
                        }
                        .frame(width: 0, height: 0)
                    })
                    .zIndex(1)
                    
                    VStack(spacing: 10) {
                        TweetCellView(tweet: "Hey Tim, are those regular glasses?", tweetImage: "post")
                        
                        Divider()
                        
                        ForEach(0..<20, id: \.self) { _ in
                            TweetCellView(tweet: sampleText)
                            
                            Divider()
                        }
                    }
                    .padding(.top)
                    .zIndex(0)
                }
                .padding(.horizontal)
                .zIndex(-offset > 80 ? 0 : 1)
            }
        }
        .ignoresSafeArea(.all)
    }
    
    private func blurViewOpacity() -> Double {
        let progress = -(offset + 90) / 150
        
        return Double(-offset > 80 ? progress : 0)
    }
    
    private func getTitleOffset() -> CGFloat {
        let progress = 20 / titleOffset
        let offset = 60 * ((progress > 0 && progress <= 1) ? progress : 1)
        
        return offset
    }
    
    private func getOffset() -> CGFloat {
        let progress = (-offset / 80) * 20
        return progress <= 20 ? progress : 20
    }
    
    private func getScale() -> CGFloat {
        let progress = -offset / 80
        let scale = 1.8 - (progress < 1.0 ? progress : 1.0)
        
        return scale < 1 ? scale : 1
    }
}

#Preview {
    UserProfile()
}
