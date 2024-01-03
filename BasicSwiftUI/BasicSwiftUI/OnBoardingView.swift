//
//  OnBoardingView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/3/24.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top, 50)
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading)  {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the peopleCombine photos and videos with the people")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            
            HStack {
                Image(systemName: "doc.text.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading)  {
                    Text("Copy & Paste Edits")
                        .font(.headline)
                    Text("Combine photos and videos with the peopleCombine photos and videos with the people")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.leading)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading)  {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the peopleCombine photos and videos with the people")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Continue")
                    .frame(width: 350, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            .padding(.bottom)
            
        }
        
        
    }
}

#Preview {
    OnBoardingView()
}
