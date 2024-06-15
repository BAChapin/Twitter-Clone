//
//  TabButton.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID
    
    var body: some View {
        Button {
            currentTab = title
        } label: {
            LazyVStack(spacing: 12) {
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundStyle(currentTab == title ? .blue : .gray)
                    .padding(.horizontal)
                
                if currentTab == title {
                    Capsule()
                        .fill(.blue)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                } else {
                    Capsule()
                        .fill(.clear)
                        .frame(height: 1.2)
                }
            }
        }

    }
}

//#Preview {
//    TabButton(title: "Posts")
//}
