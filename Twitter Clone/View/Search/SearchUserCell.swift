//
//  SearchUserCell.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack {
            ProfileImage(imageId: "logo")
                .frame(width: 44, height: 44)
            
            VStack(alignment: .leading) {
                Text("Cam")
                    .fontWeight(.heavy)
                
                Text("@cam_salta")
            }
            
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    SearchUserCell()
}
