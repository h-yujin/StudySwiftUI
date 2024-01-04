//
//  MyTabView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            TabDetailView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2View()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3View()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTabView()
}
