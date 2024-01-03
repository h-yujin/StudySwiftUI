//
//  SimpleView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/3/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack{
            Image(systemName: "photo.tv")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
//            --> scaleFit 한 후 resize는 할 수 없음.
//            Image(systemName: "photo.tv")
//                .scaledToFit()
//                .resizable()
//                .frame(width: 200, height: 200)
            
            Text("Headline")
                .font(.headline)
                .bold()
                .padding()
            
            Text("subHeadline")
                .font(.subheadline)
                .padding()
            
            Text("body")
                .font(.body)
                .padding()
            
            
//          modifier에 따라 결과가 달라질 수 있음.
//          Button1 : padding을 넣고 배경컬러를 넣음
//          Button2 : 배경컬러를 넣고 padding을 넣음
            Button {
                
            } label: {
                Text("Button1")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
            
            Button {
                
            } label: {
                Text("Button2")
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding()
                    
            }
        }
    }
}

#Preview {
    SimpleView()
}
