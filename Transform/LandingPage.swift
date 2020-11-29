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
                        
                        
                        Text("Sleep🌙").foregroundColor(.white)
                            .onTapGesture {
                                //navigate to calendar
                        }
                        
                        Text("Journal📝").foregroundColor(.white)
                            .onTapGesture {
                                //navigate to checkin
                        }
                        
                        Text("Logout").foregroundColor(.white)
                            .onTapGesture {
                                //navigate to signin screen
                        }
                        
                    
                }
                
            }
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
