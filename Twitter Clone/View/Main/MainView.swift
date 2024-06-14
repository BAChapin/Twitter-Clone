//
//  MainView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TopBar()
            
            HomeView()
        }
    }
}

#Preview {
    MainView()
}
