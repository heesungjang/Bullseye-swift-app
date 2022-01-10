//
//ButtonViews.swift
//Bullseye (iOS)
//
//Created by heesungjang on 2022/01/05.
//

import SwiftUI

struct HitMeButton: View {
  @Binding var game: Game
  @Binding var sliderValue: Double
  @Binding var alertsIsVisible: Bool
  
  
  var body: some View {
    Button(action: {
      alertsIsVisible = true
      
    }) {
      Text("Hit me".uppercased())
        .bold()
        .font(.title3)
    }
    .padding(20.0)
    .background(ZStack {
      Color("ButtonColor")
      LinearGradient(colors: [Color.white.opacity(0.3), Color.clear], startPoint: .top, endPoint: .bottom)
    })
    .foregroundColor(Color.white)
    .cornerRadius(21.0)
    .overlay(
      RoundedRectangle(cornerRadius: 21.0)
        .strokeBorder(Color.white, lineWidth: 2.0)
    )
    
    .alert(isPresented: $alertsIsVisible, content:{
      
      let roundedValue = Int(sliderValue.rounded())
      let points = game.points(sliderValue:roundedValue)
      
      return Alert(title:Text("Hello there!"),
                   message: Text("The slider value is \(roundedValue). \n" + "You scored \(points) points this round."),
                   dismissButton:
                      .default(Text("Awesome!")){
        game.startNewRound(points: points)
        
      })
    })
  }
}

