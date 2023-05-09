  //
  //  OrderView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct OrderView: View {

  @EnvironmentObject var order: Order

  var body: some View {
    NavigationView {
      ZStack {
        VStack {
          List {
            ForEach(order.items) { hat in
              HatListViewCell(hat: hat)
            }
            .onDelete(perform: order.deleteItems)
          }
          .listStyle(PlainListStyle())

          Button {
            print("order placed")
          } label: {

            Text("$\(order.totalPrice.formatted(.currency(code: "GBP"))) - Place Order")
          }
          .modifier(StandardButtonStyle())
          .padding(.bottom, 25)
        }

        if order.items.isEmpty {
          NoHats(imageName: nil,
                     message: "You have no hats in your order.\nPlease choose your hat")
        }
      }
      .navigationTitle("🧾 Orders")
    }
  }
}

struct Order_Previews: PreviewProvider {
  static var previews: some View {
    OrderView()
  }
}
