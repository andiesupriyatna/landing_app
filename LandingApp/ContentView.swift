//
//  ContentView.swift
//  LandingApp
//
//  Created by Andie Hariyadi Supriyatna on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showBars = false
       
       let barData = [
           BarData(label: "現在", height: 0.25),
           BarData(label: "3ヶ月", height: 0.4),
           BarData(label: "1年", height: 0.7),
           BarData(label: "2年", height: 1.0)
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
                   Image("speakbuddy").resizable()
                       .frame(width: 100, height: 100)
               }
           }
       }
   }

   struct BarData: Identifiable {
       let id = UUID()
       let label: String
       let height: Double
   }

   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
   }
