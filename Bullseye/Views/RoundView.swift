//
//  RoundView.swift
//  Bullseye (iOS)
//
//  Created by heesungjang on 2022/01/06.
//

import SwiftUI

struct RoundedImageViewStrocked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName:systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokColor"), lineWidth: 2.0)
          .foregroundColor(Color("ButtonFilledTextColor"))
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName:systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56.0, height: 56.0)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRectTextView: View {
  var value: String
  
  var body: some View {
      Text(value)
        .kerning(-0.2)
        .bold()
        .font(.title3)
        .frame(width: 68.0, height: 55.0)
        .foregroundColor(Color("TextColor"))
        .overlay(
          RoundedRectangle(cornerRadius: 21.0)
            .stroke(lineWidth: 2.0)
            .foregroundColor(Color("ButtonStrokColor"))
        )
  }
}

struct PreviewView: View {
  var body: some View{
    VStack{
      RoundedImageViewStrocked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
      RoundRectTextView(value: "999")
      RoundRectTextView(value: "3")
    }
  }
}

struct RoundView_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
  
}
