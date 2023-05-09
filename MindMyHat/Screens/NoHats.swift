  //
  //  NoHats.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 09/05/2023.
  //

import SwiftUI

struct NoHats: View {

  let imageName: String?
  let message: String

  var body: some View {
    ZStack {
      Color(.systemBackground)
        .ignoresSafeArea()

      VStack {

        if let imageName  {
          Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 150)
        } else {
          Image(systemName: "bin.xmark")
            .resizable()
            .scaledToFit()
            .frame(height: 150)
        }



        Text(message)
          .font(.title3)
          .fontWeight(.semibold)
          .multilineTextAlignment(.center)
          .foregroundColor(.secondary)
          .padding()
      }
      .offset(y: -50)
    }
  }
}

struct NoHats_Previews: PreviewProvider {
  static var previews: some View {
    NoHats(imageName: nil, message: "Please buy some of our beautiful hats")
  }
}
