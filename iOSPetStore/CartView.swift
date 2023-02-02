//
//  CartView.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 01/02/2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var username: String
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Hello \(username), your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                //PaymentButton(action: {})
                    //.padding()
                
                NavigationLink{
                    Checkout(username: username)
                }label: {
                    Text("Proceed to checkout")
                        .frame(width: 350, height: 45)
                        .background(.black)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                }
                
            }
            else {
                Text("Your cart is empty")
            }
            
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(username: "tomer")
            .environmentObject(CartManager())
    }
}
