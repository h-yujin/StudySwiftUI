//
//  NavigationView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI

struct NavigationView: View {
    
    let titles = ["디테일 뷰로 이동하기", "디테일 뷰로 이동하기2"]
    let descriptions = ["Destination 입니다.", "Destination 입니다.2"]
    
    @State var showModel: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach([0, 1], id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showModel = true
                    }, label: {
                        Text("Add")
                    })
                }
            }
            .sheet(isPresented: $showModel, content: {
                Text("아이템 추가 페이지")
            })
            .navigationTitle("네비게이션")
        }
        
    }
}

#Preview {
    NavigationView()
}
