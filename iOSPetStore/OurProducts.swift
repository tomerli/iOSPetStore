//
//  OurProducts.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 01/02/2023.
//

import SwiftUI

struct OurProducts: View {
    @StateObject var cartManager = CartManager()
    var username: String
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) {product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
                //Text("Hello, \(username)")
            }
            .navigationTitle(Text("Our Products"))
            .toolbar {
                NavigationLink {
                    CartView(username: username)
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden()
    }
}

struct OurProducts_Previews: PreviewProvider {
    static var previews: some View {
        OurProducts(username: "tomer")
    }
}
