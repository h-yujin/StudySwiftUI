//
//  SimpleListView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI


struct SettingInfo: Hashable {
    let title: String
    let imageName: String
    let background: Color
    let forground: Color = .white
}

struct SimpleListView: View {
    
    let data: [[SettingInfo]] = [[SettingInfo(title: "스크린 타임",
                                           imageName: "hourglass",
                                           background: .purple)],
                               [SettingInfo(title: "일반",
                                           imageName: "gear",
                                           background: .gray),
                               SettingInfo(title: "손쉬운 사용",
                                           imageName: "hand.raised.square.on.square.fill",
                                           background: .blue),
                               SettingInfo(title: "개인정보 보호 및 보안",
                                           imageName: "hand.raised.fingers.spread.fill",
                                           background: .blue)],
                               [SettingInfo(title: "스크린 타임",
                                           imageName: "hourglass",
                                           background: .gray)]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) { item in
                            Label(
                                title: { Text(item.title) },
                                icon: {
                                    Image(systemName: item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(7)
                                        .background(item.background)
                                        .foregroundColor(.white)
                                        .cornerRadius(5)
                                }
                            )
                        }
                    }
                }
                
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    SimpleListView()
}
