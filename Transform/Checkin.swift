//
//  Checkin.swift
//  Transform
//
//  Created by Ilan Harari
//  Copyright © 2020 Ilan Harari. All rights reserved.
//

import SwiftUI

struct Checkin: View {
    @State var answer1: String = ""
    @State var answer2: String = ""
    @State var answer3: String = ""
    @State var answer4: String = ""
    @State var answer5: String = ""
    @State var answer6: String = ""
    var body: some View {
        VStack( spacing: 70.0){
            
        VStack(alignment: .leading) {
            Text("What are you grateful for in the present moment?").font(.headline)
            TextField("type here", text: $answer1)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
        }
        
        VStack(alignment: .leading) {
                  Text("Who are you checking in on today?").font(.headline)
                  TextField("type here", text: $answer2)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
              }
        
        VStack(alignment: .leading) {
                  Text("What thoughts or behaviors or activities that no longer serve you in this new environment are you letting go of today?").font(.headline)
                  TextField("type here", text: $answer3)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
              }
        
        VStack(alignment: .leading) {
                  Text("How are you moving your body and getting outside today?").font(.headline)
                  TextField("type here", text: $answer4)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
              }
        
        VStack(alignment: .leading) {
                  Text("What beauty are you creating in the world today?").font(.headline)
                  TextField("type here", text: $answer5)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
              }
        
        VStack(alignment: .leading) {
                  Text("What new ways of living are you going to start or continue utilizing to create a more fulfilling life for yourself?").font(.headline)
                  TextField("type here", text: $answer6)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
              }
          
        
        Button(
            action: save,
            label: { Text("Save").foregroundColor(Color.black).padding()
                .overlay(
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke(lineWidth:2.0)
                                        .foregroundColor(Color.black)
                                )
        }
        )
        }
    }
    
}

func save() {
    //save
    
}

struct Checkin_Previews: PreviewProvider {
    static var previews: some View {
        Checkin()
    }
}
