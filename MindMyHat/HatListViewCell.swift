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
      HatImage(hatImage: "\(MindMyHat.imageURL)\(hat.image).jpg")
        .aspectRatio(contentMode: .fit)
        .frame(width: 65, height: 65)
        .cornerRadius(8)

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
}

struct HatListViewCell_Previews: PreviewProvider {
  static var previews: some View {
    HatListViewCell(hat: MockData.mockHat3)
  }
}
