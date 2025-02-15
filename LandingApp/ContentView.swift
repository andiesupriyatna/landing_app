//
//  ContentView.swift
//  LandingApp
//
//  Created by Andie Hariyadi Supriyatna on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showBars = false
       
       let graphicData = [
        Graphic(label: "現在", height: 0.25),
        Graphic(label: "3ヶ月", height: 0.4),
        Graphic(label: "1年", height: 0.7),
        Graphic(label: "2年", height: 1.0)
       ]
       
       var body: some View {
           VStack(spacing: 20) {
               HStack {
               Spacer()
                   Image(systemName: "xmark")
                       .foregroundColor(.black)
                       .padding()
                       .background(Color.white)
                       .clipShape(Circle())
                       .shadow(radius: 2)
                   .padding()
               }
               
               VStack(spacing: 8) {
                   Text("Hello")
                       .font(.largeTitle)
                       .fontWeight(.bold)
                   Text("SpeakBUDDY")
                       .font(.largeTitle)
                       .fontWeight(.bold)
                   
               }
               HStack {
                   Image("speakbuddy").resizable()
                       .frame(width: 100, height: 100)
                   Spacer(minLength: 50)
               }
               
               HStack(alignment: .bottom, spacing: 20) {
                   ForEach(graphicData) { data in
                              VStack(spacing: 8) {
                                  ZStack(alignment: .bottom) {
                                      Rectangle()
                                          .fill(Color.blue)
                                          .frame(height: 200)
                                  }
                                  Text(data.label)
                                      .font(.caption)
                              }
                              .frame(width: 40)
                          }
                      }
                      .padding(.horizontal)
              }
              
       }
   }

   struct Graphic: Identifiable {
       let id = UUID()
       let label: String
       let height: Double
   }

   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
   }
