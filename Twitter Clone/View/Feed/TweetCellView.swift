//
//  TweetCellView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

var sampleText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur mauris nec feugiat luctus. Donec ut imperdiet nunc, semper lacinia dui. Sed vitae justo vitae orci gravida vestibulum vitae vitae ex. Cras egestas luctus elementum. Etiam dapibus nibh ipsum, eget tristique mi fermentum mattis. Donec efficitur dolor vulputate odio pharetra, suscipit iaculis velit scelerisque."

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10, content: {
                
                ProfileImage(imageId: "logo")
                    .frame(width: 55, height: 55)
                
                VStack(alignment: .leading, spacing: 10, content: {
                    HStack(spacing: 3) {
                        Text("Cam ")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("@cam_salta")
                            .foregroundStyle(.gray)
                    }
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                })
            })
            
            HStack(spacing: 50) {
                Button(action: {
                    
                }, label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16, height: 16)
                })
                .foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18, height: 14)
                })
                .foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 15)
                })
                .foregroundColor(.gray)
                
                Button(action: {
                    
                }, label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 18, height: 15)
                })
                .foregroundColor(.gray)
            }
            .padding(.top, 4)
        }
    }
}

#Preview {
    TweetCellView(tweet: sampleText)
}
