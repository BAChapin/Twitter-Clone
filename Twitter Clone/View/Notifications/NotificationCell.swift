//
//  NotificationCell.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

struct NotificationCell: View {
    
    private var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack(alignment: .top) {
                
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading, spacing: 5) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                    
                    HStack(spacing: 5) {
                        Text("Cam")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("followed you")
                            .foregroundStyle(.gray)
                    }
                }
                
                
                Spacer(minLength: 0)
            }
            .padding(.leading, 30)
        }
    }
}

#Preview {
    NotificationCell()
}
