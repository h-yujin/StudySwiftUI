//
//  ModalView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI

struct ModalView: View {
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("Main Page")
            
            Button(action: {
                showModal = true
            }, label: {
                Text("modal present")
            })
        }
        .sheet(isPresented: $showModal, content: {
            ModelDetailView(isPresented: $showModal)
        })
        
    }
}

#Preview {
    ModalView()
}
