//
//  BackgroundView.swift
//  Bullseye (iOS)
//
//  Created by heesungjang on 2022/01/06.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack{
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }
    .padding()
    .background(
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
    )
  }
  
  
  struct NumberView: View{
    var title: String
    var text: String
    
    var body: some View {
      VStack(spacing: 5){
        LabelText(text: title.uppercased())
        RoundRectTextView(value: text)
      }
    }
  }
    
    
    struct TopView: View {
      @Binding var game: Game
      
      var body: some View {
        HStack{
          RoundedImageViewStrocked(systemName: "arrow.counterclockwise")
          Spacer()
          RoundedImageViewFilled(systemName: "list.dash")
        }
      }
    }
    
    struct BottomView: View {
      @Binding var game: Game
      
      var body: some View {
        HStack{
          NumberView(title: "Score", text: String(game.score))
          Spacer()
          NumberView(title: "Round", text: String(game.round))
        }
      }
    }
    
    
    
    struct BackgroundView_Previews: PreviewProvider {
      static var previews: some View {
        BackgroundView(game: .constant(Game()))
      }
    }
  }
