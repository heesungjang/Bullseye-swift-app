//
//  ContentView.swift
//  Shared
//
//  Created by heesungjang on 2022/01/04.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertsIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  @State private var game: Game = Game()
  
  var body: some View {
    VStack {
      Text(" 😜 😜 😜 \n PUT THE BULLEYES AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text(String(game.target))
        .kerning(-1.0)
        .font(.largeTitle)
        .fontWeight(.black)
      HStack {
        Text("1")
          .bold()
        Slider(value: self.$sliderValue, in:1.0...100.0)
        Text("100")
          .bold()
      }
      Button(action: {
        self.alertsIsVisible = true
      }) {
        Text("Hit me")
      }
      .alert(isPresented: $alertsIsVisible, content:{
        
        var roundedValue: Int = Int(self.sliderValue.rounded())
        
        return Alert(title:Text("Hello there!"),message: Text("The slider value is \(roundedValue). \n" + "You scored \(self.game.points(sliderValue:roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
