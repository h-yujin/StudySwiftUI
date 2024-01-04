//
//  ListView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI

struct ListView: View {
    
    private var fruits = ["apple", "banana", "cherry", "Durian", "Elder berry"]
    
    private var price = ["1000", "3000", "4000", "2400", "6000"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    VStack {
                        LabeledContent(fruit) {
                            Image(systemName: "arrowshape.right.fill")
                        }
                        
                        Text(price[0])
                            .frame(maxWidth: .infinity)
                            .multilineTextAlignment(.leading)
                            
                    }
                    
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListView()
}
