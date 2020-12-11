//
//  ContentView.swift
//  Transform
//
//  Created by Ilan Harari on 10/14/20.
//  Copyright © 2020 Ilan Harari. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    // MARK: - Propertiers
    @State private var Username = ""
    @State private var password = ""
    
    // MARK: - View
    var body: some View {
        NavigationView{
            VStack() {
                Text("Login")
                    .font(.largeTitle).foregroundColor(Color.black)
                    .padding([.top, .bottom], -7.0)
                    
                    .shadow(radius: 10.0, x: 20, y: 10)
                            
                VStack(alignment: .leading, spacing: 15) {
                    TextField("Username", text: self.$Username)
                        .padding()
                        .foregroundColor(.black)
                        .background(Color.blue)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    
                    SecureField("Password", text: self.$password)
                        .foregroundColor(    .black)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                }.padding([.leading, .trailing], 1)
                
                VStack(alignment: .leading, spacing: 100) {
                    NavigationLink(destination:LandingPage()){
                        Text("sign in")
                    }
                        
                   
                    
                    NavigationLink(destination:Signup()){
                        Text("need an account click here")
                            }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                                
                        
                    }
            }}
            

                
           
                }
            

        
        
        
    






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
}

