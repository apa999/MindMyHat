  //
  //  HatImage.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct HatImage: View {
  let hatImage: String
  
  var body: some View {
    AsyncImage(url: URL(string: hatImage)) { image in
      image
        .resizable()
    } placeholder: {
      Image(MindMyHat.defaultHatImage)
        .resizable()
    }
  }
}


struct HatImage_Previews: PreviewProvider {
  static var previews: some View {
    HatImage(hatImage: "\(MindMyHat.imageURL)\(MockData.mockHat3.image).jpg")
  }
}
