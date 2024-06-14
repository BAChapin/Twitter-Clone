//
//  SearchCell.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

struct SearchCell: View {
    
    var tag = ""
    var tweets = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("Hello")
                .fontWeight(.heavy)
            
            Text(tweets + " Tweets")
                .fontWeight(.light)
        })
    }
}

#Preview {
    SearchCell()
}
