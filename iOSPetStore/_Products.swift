//
//  Products.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 22/01/2023.
//

import SwiftUI


struct Products: View {
    @Environment(\.dismiss) private var dismiss
    var username: String
    var products = ["cats-1", "cats-2", "cats-3", "cats-4", "cats-5", "cats-6", "cats-7", "cats-8", "cats-9"]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(products, id: \.self){
                    product in
                    NavigationLink {
                        ProductView(productId: product)
                    } label:{
                        Text(product)
                    }
                    
                }
                
            }
            .listStyle(.plain)
            .navigationBarBackButtonHidden()
            .navigationTitle("Our Products")
            .navigationBarTitleDisplayMode(.automatic)
            
            VStack{
                Text("Hello, \(username)")
                
                //Spacer(   )
                
                Button("back"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
            
        }
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        Products(username: "tomer")
    }
}
