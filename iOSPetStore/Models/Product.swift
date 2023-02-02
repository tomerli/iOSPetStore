//
//  Product.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 01/02/2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Cats Yammi 1", image: "cat1", price: 23),
                   Product(name: "Cats Yammi 2", image: "cat2", price: 17),
                   Product(name: "Cats Yammi 3", image: "cat3", price: 14),
                   Product(name: "Dogs Yammi 1", image: "dog1", price: 34),
                   Product(name: "Dogs Yammi 2", image: "dog2", price: 19),
                   Product(name: "Dogs Yammi 3", image: "dog3", price: 28),
                   Product(name: "Parrot Yammi 1", image: "parrot1", price: 11),
                   Product(name: "Parrot Yammi 2", image: "parrot2", price: 15),
                   Product(name: "Parrot Yammi 3", image: "parrot3", price: 16)]
