//
//  ListView.swift
//  BasicSwiftUI
//
//  Created by 홍유진 on 1/4/24.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListView: View {
    
    var favoritFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "Durian", price: 4000),
        Fruit(name: "Durian", matchFruitName: "Elder berry", price: 5000),
        Fruit(name: "Elder berry", matchFruitName: "Durian", price: 6000)
    ]
    
//    private var fruits = ["apple", "banana", "cherry", "Durian", "Elder berry"]
//    private var price = ["1000", "3000", "4000", "2400", "6000"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favoritFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("\(fruit.name)")
                        Text("\(fruit.matchFruitName)")
                        Text("\(fruit.price)")
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
