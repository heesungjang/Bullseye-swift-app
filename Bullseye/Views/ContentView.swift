//
//  ContentView.swift
//  Shared
//
//  Created by heesungjang on 2022/01/04.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertsIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      VStack {
        InstructionView(game: $game)
        SliderView(sliderValue: $sliderValue)
        HitMeButton(game:$game, sliderValue:$sliderValue, alertsIsVisible:$alertsIsVisible)
      }
    }
  }
}

struct SliderView: View{
  @Binding var sliderValue: Double
  
  var body: some View{
    HStack{
      SliderText(text: "1")
      Slider(value: $sliderValue, in:1.0...100.0)
      SliderText(text: "100")
    }
    .padding()
  }
}


struct InstructionView: View{
  @Binding var game: Game
  
  var body: some View{
    VStack{
      InstructionText(text:"😜😜😜\nput the bulleyes as close as you can do")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
      BigNumberText(text: String(game.target))
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
  }
}
