  //
  //  HatListViewCell.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct HatListViewCell: View {
  let hat: Hat

  var body: some View {

    HStack {
      hatImage(hatImage: "\(MindMyHat.imageURL)\(hat.image).jpg")

      VStack(alignment: .leading, spacing: 3) {
        Text(hat.title)
          .font(.title2)
          .fontWeight(.medium)

        Text("\(hat.price.formatted(.currency(code: "GBP")))")
          .foregroundColor(.secondary)
          .fontWeight(.semibold)
      }
    }
  }

  func hatImage(hatImage: String) -> some View {

    return AsyncImage(url: URL(string: hatImage)) { image in
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 65, height: 65)
            .cornerRadius(8)
    } placeholder: {
        Image(
          MindMyHat.defaultHatImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 65, height: 65)
            .cornerRadius(8)
    }
  }
}

struct HatListViewCell_Previews: PreviewProvider {
  static var previews: some View {
    HatListViewCell(hat: MockData.mockHat0)
  }
}
