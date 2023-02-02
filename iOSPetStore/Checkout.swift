//
//  Checkout.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 22/01/2023.
//

import SwiftUI

struct Checkout: View {
    @State private var cardHolder = ""
    @State private var cardNumber = ""
    @State private var expDate = ""
    @State private var cvv = ""
    @State private var phoneNumber = ""
    @State private var showingAlert = false
    var username: String
    
    var body: some View {
        
        NavigationStack{
                VStack{
                    
                    TextField("Cardholder Name", text: $cardHolder).padding().frame(width: 350, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    
                    TextField("Card Number", text: $cardNumber).padding().frame(width: 350, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    
                    TextField("Expiration Date", text: $expDate).padding().frame(width: 350, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    
                    TextField("CVV", text: $cvv).padding().frame(width: 350, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    
                    TextField("Phone Number", text: $phoneNumber).padding().frame(width: 350, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10)
                    
                    Spacer()
                    
                    NavigationLink {
                        ThankYou(username: username)
                    }label: {
                        Text("Pay")
                            .frame(width: 350, height: 45)
                            .background(.black)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    
                }
                //.navigationBarHidden(true)
                .navigationTitle("Payment Details")
                .padding()
        }
        
    }
    
    
    struct Checkout_Previews: PreviewProvider {
        static var previews: some View {
            Checkout(username: "tomer")
        }
    }
}
