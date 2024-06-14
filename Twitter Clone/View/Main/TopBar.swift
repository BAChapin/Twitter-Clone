//
//  TopBar.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct TopBar: View {
    
    private var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                })
                
                Spacer(minLength: 0)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
                Spacer(minLength: 0)
            }
            .padding()
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .background(.white)
    }
}

#Preview {
    TopBar()
}
