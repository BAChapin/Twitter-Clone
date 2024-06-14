//
//  MessagesView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/12/24.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { _ in
                    MessageCell()
                }
            }
        }
    }
}

#Preview {
    MessagesView()
}
