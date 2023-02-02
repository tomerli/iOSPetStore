//
//  ThankYou.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 02/02/2023.
//

import SwiftUI

struct ThankYou: View {
    var username: String
    var body: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea()
            Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
            Circle().scale(1.35).foregroundColor(.white)
            
            VStack {
                
                Image("logo")
                    .padding(.bottom)
                
                Text("\(username), Thank You For Your Purchase!")
                    .bold()
                
                NavigationLink{
                    OurProducts(username: username)
                }label: {
                    Text("Continue Shopping").frame(width: 275, height: 35)
                }
            }
            .navigationBarHidden(true)
        }
    }
    
}

struct ThankYou_Previews: PreviewProvider {
    static var previews: some View {
        ThankYou(username: "tomer")
    }
}
