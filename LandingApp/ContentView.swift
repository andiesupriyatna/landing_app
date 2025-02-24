//
//  ContentView.swift
//  LandingApp
//
//  Created by Andie Hariyadi Supriyatna on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    var bgColor = UIColor(named: "bgColor")
    var hello = "hello"
    var title = "SpeakBUDDY"
    var originalWidth: CFloat = 270
    var originalHeight: CFloat = 300
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                }) {
                    Image(systemName: "")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            
            Text(hello)
                .font(.system(size: 34, weight: .bold))
            Text(title)
                .font(.system(size: 34, weight: .bold))
            
            ZStack{
                
                HStack(alignment: .bottom, spacing: 20) {
                    BlueBar(height: 60, label: "現在")
                    BlueBar(height: 90, label: "3ヶ月")
                    BlueBar(height: 140, label: "1年")
                    BlueBar(height: 180, label: "2年")
                }
                .frame(width: 270,height: 300)
                .padding(.horizontal, 40)
                .padding(.top, 20)
                
                
                Image("speakbuddy")
                    .resizable().scaledToFit().frame(width: 120).offset(x: -50, y: -80)
            }
            VStack(spacing: 8) {
                Text("スピークバディで")
                    .font(.system(size: 18))
                Text("レベルアップ")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.blue)
            }
            .padding(.top, 30)
            
            Button(action: {
               
            }) {
                Text("プランに登録する")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 25)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(30)
            }
            .padding(.horizontal, 20)
            .padding(.top, 30)
            .padding(.leading, 30)
            .padding(.trailing, 30)
            
            Spacer()
        }
        .background((
            LinearGradient(gradient: Gradient(colors: [Color(self.bgColor!), .white]), startPoint: .top, endPoint: .bottom)
        ))
    }
}

struct BlueBar: View {
    let height: CGFloat
    let label: String
    @State private var animatedHeight: CGFloat = 0
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue.opacity(0.1))
                    .frame(width: 40, height: height)
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue)
                    .frame(width: 40, height: animatedHeight)
            }
            Text(label)
                .font(.system(size: 14))
                .foregroundColor(.black)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 1.0).delay(0.3)) {
                animatedHeight = height
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
