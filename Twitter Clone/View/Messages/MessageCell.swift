//
//  MessageCell.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct MessageCell: View {
    
    private var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 5) {
                        Text("Cam")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        
                        Text("@cam_salta")
                            .foregroundStyle(.gray)
                        
                        Spacer(minLength: 0)
                        
                        Text("6/20/21")
                            .foregroundStyle(.gray)
                            .padding(.trailing)
                    }
                    
                    Text("You: Hey! How's it going?")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                }
            }
            .padding(.top, 2)
        }
        .frame(width: width, height: 84)
    }
}

#Preview {
    MessageCell()
}
