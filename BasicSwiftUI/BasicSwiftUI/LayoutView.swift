//
//  LayoutView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/3/24.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        VStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding()
            Text("Text Element 1")
                .font(.system(size: 30))
                .padding()
            Text("Text Element 2")
                .font(.system(size: 20))
                .padding()
            Text("Text Element 3")
                .font(.system(size: 15))
                .padding()
            HStack {
                CustomButton(buttonTitle: "Button 1", buttonColor: .blue)
                CustomButton(buttonTitle: "Button 2", buttonColor: .green)
            }
            Button(action: {}, label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            })
        }
    }
}



#Preview {
    LayoutView()
}
