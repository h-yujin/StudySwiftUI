//
//  FirstListView.swift
//  BasicSwiftUI
//
//  Created by Hong yujin on 1/4/24.
//

import SwiftUI

struct FirstListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Text("첫번째 하위 페이지로 이동")
                } label: {
                    Text("첫번째 하위 페이지")
                }
                
                NavigationLink {
                    Text("두번째 하위 페이지로 이동")
                } label: {
                    Text("두번째 하위 페이지")
                }
                
                NavigationLink {
                    Text("세번째 하위 페이지로 이동")
                } label: {
                    Text("세번째 하위 페이지")
                }
                
                NavigationLink {
                    Text("네번째 하위 페이지로 이동")
                } label: {
                    Text("네번째 하위 페이지")
                }
            }
            .navigationTitle("리스트")
        }
    }
}

#Preview {
    FirstListView()
}
