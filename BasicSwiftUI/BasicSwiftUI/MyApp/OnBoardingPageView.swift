//
//  OnBoardingPageView.swift
//  BasicSwiftUI
//
//  Created by Hong yujin on 1/4/24.
//

import SwiftUI

struct OnBoardingPageView: View {
    
    let pageIndex: Int
    let onboardingTitle: String
    let backgroundColor: Color
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            if pageIndex == 2 {
                VStack {
                    Text("OnBoarding3")
                    Button(action: {
                        isPresented = false
                    }, label: {
                        Text("Start")
                    })
                }
            } else {
                Text(onboardingTitle)
            }
            
        }
    }
}

#Preview {
    OnBoardingPageView(pageIndex: 0, onboardingTitle: "온보딩 테스트", backgroundColor: .white, isPresented: .constant(true))
}
