//
//  MyApp.swift
//  BasicSwiftUI
//
//  Created by Hong yujin on 1/4/24.
//

import SwiftUI

struct MyApp: View {
    @State var showModel: Bool = false
    var body: some View {
        TabView {
            FirstListView()
            .tabItem {
                Label("First", systemImage: "tray.and.arrow.down.fill")
            }
            
            Text("두번째 페이지")
                .tabItem {
                    Label("Second", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("세번째 페이지")
                .tabItem {
                    Label("Third", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("네번째 페이지")
                .tabItem {
                    Label("Fourth", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModel, content: {
            TabView {
                OnBoardingPageView(pageIndex: 0, onboardingTitle: "온보딩1", backgroundColor: .blue, isPresented: $showModel)

                OnBoardingPageView(pageIndex: 1, onboardingTitle: "온보딩2", backgroundColor: .green, isPresented: $showModel)
                
                
                OnBoardingPageView(pageIndex: 2, onboardingTitle: "온보딩3", backgroundColor: .brown, isPresented: $showModel)
                
            }
            .tabViewStyle(.page)
        })
        .onAppear(perform: {
            showModel = true
        })
    }
}

#Preview {
    MyApp()
}
