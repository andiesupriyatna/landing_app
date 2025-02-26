//
//  ContentView.swift
//  LandingApp
//
//  Created by Andie Hariyadi Supriyatna on 12/02/25.
//

import SwiftUI
struct ContentView: View {
    let hello = "hello"
    let title = "SpeakBUDDY"
    let originalWidth: CFloat = 230
    let originalHeight: CFloat = 300
    var body: some View {
        GeometryReader { geometry in
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
                
                Text(self.hello)
                    .font(.system(size: 34, weight: .bold))
                Text(self.title)
                    .font(.system(size: 34, weight: .bold))
                Spacer()
                ZStack{
                    HStack(alignment: .bottom, spacing: geometry.size.width * 0.05) {
                           BlueBar(height: geometry.size.height * 0.1, label: "現在")
                           BlueBar(height: geometry.size.height * 0.15, label: "3ヶ月")
                           BlueBar(height: geometry.size.height * 0.23, label: "1年")
                           BlueBar(height: geometry.size.height * 0.3, label: "2年")
                       }
                       .frame(width: min(geometry.size.width * 0.8, 3000), height: min(geometry.size.height * 0.4, 300))
                       .padding(.horizontal, geometry.size.width * 0.05)
                    Image("speakbuddy")
                        .resizable().scaledToFit()
                        .frame(width: min(geometry.size.width * 0.3, CGFloat(self.originalWidth)))
                        .offset(x: -geometry.size.width * 0.15, y: -80)
                }
                
                Spacer()
                VStack(spacing: 8) {
                    Text("スピークバディで")
                        .font(.system(size: 18))
                    Text("レベルアップ")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.blue)
                }
                .padding(.top, 30)
                
                Button(action: {
                    Alert(title: Text("hi"))
                }) {
                    Text("プランに登録する")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: min(geometry.size.width * 0.8, 300), height: 25)
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
            .frame(width: geometry.size.width, height: geometry.size.height).background(LinearGradient(gradient: Gradient(colors: [Color("bgColor"), .white]),startPoint: .top, endPoint: .bottom))
        }
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
            withAnimation(.easeOut(duration: 1.0).delay(0.2)) {
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
