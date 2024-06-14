//
//  SearchBarView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                }
                .onTapGesture {
                    isEditing.toggle()
                }
            
            Button {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            } label: {
                Text("Cancel")
                    .foregroundStyle(.black)
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
            }

        }
    }
}

#Preview {
    SearchBar(text: .constant(""), isEditing: .constant(false))
}
