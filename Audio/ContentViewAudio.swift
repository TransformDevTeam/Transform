//
//  ContentViewAudio.swift
//  Transform
//
//  Created by user181880 on 11/10/20.
//  Copyright © 2020 Ilan Harari. All rights reserved.
//

import SwiftUI

struct ContentViewAudio: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {print(self.audioRecorder.startRecording())}) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                } else {
                    Button(action: {self.audioRecorder.stopRecording()}) {
                        Image(systemName: "stop.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                }
            }
                .navigationBarTitle("Voice recorder")
                .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentViewAudio_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewAudio(audioRecorder: AudioRecorder())
    }
}
