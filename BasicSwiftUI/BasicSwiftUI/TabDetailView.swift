//
//  TabDetailView.swift
//  BasicSwiftUI
//
//  Created by Hong yujin on 1/4/24.
//

import SwiftUI

struct TabDetailView: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is Detail")
        }
        
    }
}

struct TabDetail2View: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("This is Detail2")
                
                Button(action: {}, label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)

                })
            }
        }
        
    }
}

struct TabDetail3View: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("This is Detail")
        }
        
    }
}

#Preview {
    TabDetailView()
}
