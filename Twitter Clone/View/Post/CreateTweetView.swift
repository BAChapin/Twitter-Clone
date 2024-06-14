//
//  CreateTweetView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

struct CreateTweetView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Tweet")
                        .padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
                
            }
            
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

#Preview {
    CreateTweetView()
}
