//
//  LandingPage.swift
//  Transform
//
//  Created by Ilan Harari.
//  Copyright © 2020 Ilan Harari. All rights reserved.
//
import SwiftUI

struct LandingPage : View {
    
    var body: some View {
        NavigationView{
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(.blue)
                    .edgesIgnoringSafeArea(.all)
            
             
                VStack {
                   
                    ZStack {
                        Circle().frame(height: 120).padding(.bottom, 120)
                            .foregroundColor(.white)
                            .padding(.bottom)
                        Image("microphone")
                            .resizable().frame(width: 80, height: 80)
                            .padding()
                            .offset(y: -70)
                        
                    }.onTapGesture {
                        //navigate to voice memo screen
                    }
                    
                   
                 
                        
                    VStack(alignment: .center, spacing: 32.0) {
                            
                        NavigationLink(destination:LandingPage()){
                            Text("Sleep🌙").foregroundColor(.white)
                        }
                         
                        NavigationLink(destination:checkin()){                        Text("Journal📝").foregroundColor(.white)
                            }
                                
                        NavigationLink(destination:LoginView()){
                            Text("Log Out").foregroundColor(.white)                           }
                            
                        
                    }
                    
                }}
        }.background(Color.blue) //end ZStack
        
    }
    
}


struct LandingButtonView : View {
    var btnTxt: String = "Hello"
    var body: some View {
        Button(action: {
            //go to page
        }) {
            Text("\(btnTxt)")
        }.foregroundColor(Color.white)
    }
}











struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}

