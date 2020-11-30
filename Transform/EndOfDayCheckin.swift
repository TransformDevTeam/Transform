//
//  EndOfDayCheckin.swift
//  Transform
//
//  Created by Ilan Harari on 10/18/20.
//  Copyright © 2020 Ilan Harari. All rights reserved.
//

import SwiftUI


struct checkin: View {
    
    @State var answer: String = ""
    @State var qIndex = 0
    let questions = ["What are you grateful for in the present moment?",
                    "Who are you checking in on today?",
                    "What thoughts or behaviors or activities that" +
                    " no longer serve you in this new environment are you letting go of today?",
                    "How are you moving your body and getting outside today?",
                    "What beauty are you creating in the world today?",
                    "What new ways of living are you going to start or " +
                    "continue utilizing to create a more fulfilling life for yourself?"]
    
    
    var body: some View {
        Form{
            
        
        ZStack(content: {
            RoundedRectangle(cornerRadius: 10.0).fill().edgesIgnoringSafeArea([.all])
            VStack(alignment: .center) {
                       Text(questions[qIndex]).foregroundColor(Color.white).lineLimit(5).padding(20.0)
                        .minimumScaleFactor(0.5).font(.title).multilineTextAlignment(.center)
                       TextField("type here...", text: $answer)
                       .padding()
                       .textFieldStyle(RoundedBorderTextFieldStyle())
                       
                       Button(
                           action: updateIndex,
                           label: { Text("Next").foregroundColor(Color.white).padding()
                               .overlay(
                                                   RoundedRectangle(cornerRadius: 10.0)
                                                       .stroke(lineWidth:2.0)
                                                       .foregroundColor(Color.white)
                                               )
                       }
                       )
                       
                   }
                   .padding()
        }).foregroundColor(Color.blue)
        }
    }

    func updateIndex() {
        if (qIndex < 5) {
            qIndex = qIndex + 1
        }
    }
    
}

struct EndOfDayCheckin_Previews: PreviewProvider {
    static var previews: some View {
       checkin()
    }
}
