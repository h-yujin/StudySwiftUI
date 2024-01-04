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
    
    @State var favoritFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "Durian", price: 4000),
        Fruit(name: "Durian", matchFruitName: "Elder berry", price: 5000),
        Fruit(name: "Elder berry", matchFruitName: "Durian", price: 6000)
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button(action: {
                        favoritFruits.append(Fruit(name: fruitName, 
                                                   matchFruitName: "Apple",
                                                   price: 1000))
                    }, label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
                .padding()
            }
            List {
                ForEach(favoritFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("\(fruit.name)")
                        Text("\(fruit.matchFruitName)")
                        Text("\(fruit.price)")
                    }
                }.onDelete(perform: { indexSet in
                    favoritFruits.remove(atOffsets: indexSet)
                })
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListView()
}
