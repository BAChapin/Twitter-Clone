//
//  SearchView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/12/24.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var isSearchEditing = false
    
    var body: some View {
        VStack {
            
            SearchBar(text: $searchText, isEditing: $isSearchEditing)
                .padding(.horizontal)
            
            if !isSearchEditing {
                List(0..<10) { i in
                    SearchCell(tag: "", tweets: "\(i)")
                }
                .listStyle(.plain)
            } else {
                List(0..<10) { _ in
                    SearchUserCell()
                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    SearchView()
}
