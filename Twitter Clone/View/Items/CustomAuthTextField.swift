//
//  CustomAuthTextField.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/15/24.
//

import SwiftUI

struct CustomAuthTextField: View {
    
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundStyle(.gray)
                }
                
                TextField("", text: $text)
                    .frame(height: 45)
                    .foregroundColor(Color("Twitter Blue"))
            }
            
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top, -2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomAuthTextField(placeholder: "Email", text: .constant(""))
}
