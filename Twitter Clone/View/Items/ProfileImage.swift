//
//  ProfileImage.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct ProfileImage: View {
    
    var imageId: String
    
    var body: some View {
        Image(imageId)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
    }
}

#Preview {
    ProfileImage(imageId: "logo")
}
