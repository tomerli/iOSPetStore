//
//  Login.swift
//  iOSPetStore
//
//  Created by Tomer Lihovetsky on 22/01/2023.
//

import SwiftUI

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)
                
                VStack{
                    
                    Image("logo")
                        .padding(.bottom)
                    
                    TextField("Username", text: $username).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password).padding().frame(width: 300, height: 50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red, width: CGFloat(wrongPassword))
                    
                    NavigationLink{
                        OurProducts(username: username)
                    }label: {
                        //Image(systemName: "eye")
                        Text("Login").frame(width: 275, height: 35)
                        
                        /*Button("Login"){
                            //authenticateUser(username: username, password: password)
                        }
                        .foregroundColor(.white).frame(width: 300, height: 50).background(Color.blue).cornerRadius(10)*/
                        
                    }
                    .buttonStyle(.borderedProminent)
                    
                }
            }
            .navigationBarHidden(true)

        }
        
    }
    
    func authenticateUser(username: String, password: String){
        if !username.lowercased().isEmpty{
            wrongUsername = 0
            if !password.lowercased().isEmpty{
                wrongPassword = 0
                showingLoginScreen = true
            }
            else{
                wrongPassword = 2
            }
        }
        else{
            wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
