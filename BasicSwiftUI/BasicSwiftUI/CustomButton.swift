//
//  CustomButton.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/3/24.
//

import SwiftUI

struct CustomButton: View {
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button(action: {}, label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        })
    }
}

#Preview {
    CustomButton(buttonTitle: "ButtonTitle", buttonColor: .accentColor)
}
