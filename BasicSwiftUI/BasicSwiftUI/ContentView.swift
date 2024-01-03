//
//  ContentView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            Image(systemName: "photo")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(.accentColor)
            Text("Hello World!")
                .multilineTextAlignment(.leading)
                .italic()
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
