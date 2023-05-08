  //
  //  HatDetailView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct HatDetailView: View {

  let hat: Hat

  @Binding var isShowingDetail: Bool

  var body: some View {
    VStack {
      HatImage(hatImage: "\(MindMyHat.imageURL)\(hat.image).jpg")
        .aspectRatio(contentMode: .fit)
        .frame(width: 300, height: 225)

      VStack {
        Text(hat.title)
          .font(.title2)
          .fontWeight(.semibold)

        Text(hat.description)
          .multilineTextAlignment(.center)
          .font(.body)
          .padding()
      }

      Spacer()

      Button {
//        order.add(appetizer)
        isShowingDetail = false
      } label: {

        Text("\(hat.price.formatted(.currency(code: "GBP")))")
      }
      .modifier(StandardButtonStyle())
      .padding(.bottom, 30)
    }
    .frame(width: 300, height: 525)
//    .background(Color(.systemBackground))
    .cornerRadius(12)
    .shadow(radius: 40)
    .overlay(Button {
      isShowingDetail = false
    } label: {
      XDismissButton()
    }, alignment: .topTrailing)
  }
}

struct HatDetailView_Previews: PreviewProvider {
  static var previews: some View {
    HatDetailView(hat: MockData.mockHat3,
                  isShowingDetail: .constant(false))
  }
}
