//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/12/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing:18) {
                TweetCellView(tweet: sampleText, tweetImage: "post")
                
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                    
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

#Preview {
    FeedView()
}
