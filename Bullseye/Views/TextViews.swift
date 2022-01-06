//
//  TextViews.swift
//  Bullseye (iOS)
//
//  Created by heesungjang on 2022/01/05.
//

import SwiftUI

struct LabelText: View{
  var text: String
  
  var body: some View{
    Text(text.uppercased())
      .font(.caption)
      .foregroundColor(Color("TextColor"))
      .kerning(1.5)
      .bold()
  }
  
}

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View{
  var text: String
  
  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
  }
}

struct SliderText: View{
  var text: String
  
  var body: some View{
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .frame(width: 35.0)
  }
}


struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
      InstructionText(text: "intstructions")
      BigNumberText(text: "999")
      SliderText(text: "99")
      LabelText(text:"score")
      LabelText(text:"Round")
    }
  }
}
