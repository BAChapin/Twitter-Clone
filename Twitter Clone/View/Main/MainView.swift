//
//  MainView.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/14/24.
//

import SwiftUI

struct MainView: View {
    
    private var width = UIScreen.main.bounds.width - 90
    @State var x = -UIScreen.main.bounds.width + 90
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .init(horizontal: .leading, vertical: .center)) {
                    VStack {
                        TopBar(x: $x)
                        HomeView()
                    }
                    
                    SlideMenu()
                        .shadow(color: .black.opacity(x == 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                        .offset(x: x == 0 ? 0 : x)
                        .background(.black.opacity(x == 0 ? 0.5 : 0))
                        .onTapGesture {
                            withAnimation {
                                x = -width
                            }
                        }
                }
                .gesture(DragGesture().onChanged({ value in
                    withAnimation {
                        if value.translation.width > 0 {
                            if x < 0 {
                                self.x = -self.width + value.translation.width
                            }
                        } else {
                            if x != -self.width {
                                self.x = value.translation.width
                            }
                        }
                    }
                })
                    .onEnded({ value in
                        withAnimation {
                            if -x < self.width / 2 {
                                x = 0
                            } else {
                                x = -width
                            }
                        }
                    }))
            }
            .navigationBarHidden(true)
            .navigationTitle("")
        }
    }
}

#Preview {
    MainView()
}
