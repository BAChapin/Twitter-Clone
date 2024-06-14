//
//  MenuButton.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct MenuButton: View {
    
    var title: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundStyle(.black)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 12)
    }
}

#Preview {
    MenuButton(title: "Profile")
}
