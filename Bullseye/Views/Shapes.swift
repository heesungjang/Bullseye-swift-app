//
//  Shapes.swift
//  Bullseye (iOS)
//
//  Created by heesungjang on 2022/01/06.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack{
      Circle()
        .strokeBorder(lineWidth: 20.0)
        .frame(width: 200, height: 100)
      RoundedRectangle(cornerRadius: 20.0)
        .frame(width: 200, height: 100)
      Capsule()
        .frame(width: 200, height: 100)
      Ellipse()
        .frame(width: 200, height: 100)
    }
    .background(Color.green)
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
