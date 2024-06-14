//
//  FollowView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct FollowView: View {
    
    var count: Int
    var title: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
            Text(title)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FollowView(count: 26, title: "Followers")
}
