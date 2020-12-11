//
//  signup.swift
//  Transform
//
//  Created by user181880 on 10/14/20.
//  Copyright © 2020 Ilan Harari. All rights reserved.
//

import SwiftUI

struct Signup: View {
    // MARK: - Propertiers
    @State private var Username = ""
    @State private var password = ""
    
    // MARK: - View
    var body: some View {
        NavigationView{

            VStack() {
                Text("Sign up")
                    .font(.largeTitle).foregroundColor(Color.black)
                    .padding([.top, .bottom], -7.0)
                    
                    .shadow(radius: 10.0, x: 20, y: 10)
                            
                VStack(alignment: .leading, spacing: 30) {
                    TextField("Username", text: self.$Username)
                        .padding()
                        .foregroundColor(.black)
                        .background(Color.blue)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    
                    SecureField("Password", text: self.$password)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                }.padding([.leading, .trailing], 1)
                
                NavigationLink(destination:LandingPage()){
                    Text("sign up")
                    
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    
                }.padding(.top, 50)



                
     
                
           
                }
                

        }
    }
        
        
    






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}




