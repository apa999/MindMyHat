  //
  //  OrderView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct OrderView: View {
  var body: some View {
    NavigationView {
      Text("Shopping bag")
        .navigationTitle("🛍️ Shopping bag")
    }
  }
}

struct Order_Previews: PreviewProvider {
  static var previews: some View {
    OrderView()
  }
}
