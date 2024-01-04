//
//  ModelDetailView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI

struct ModelDetailView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("Modal Page")
        
        Button(action: {
            isPresented = false
        }, label: {
            Text("Close")
        })
        
        
    }
}

#Preview {
    ModelDetailView(isPresented: .constant(true))
}
