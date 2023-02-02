//
//  ProductView.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 23/01/2023.
//

import SwiftUI

struct ProductView: View {
    @Environment(\.dismiss) private var dismiss
    var productId: String
    
    var body: some View {
        Text("Product: \(productId)")
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(productId: "cats")
    }
}
