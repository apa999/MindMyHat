  //
  //  Order.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 09/05/2023.
  //

import SwiftUI

final class Order: ObservableObject {

  @Published var items: [Hat] = []

  var totalPrice: Double {
    items.reduce(0) { $0 + $1.price }
  }

  func add(_ hat: Hat) {
    items.append(hat)
  }

  func deleteItems(at offsets: IndexSet) {
    items.remove(atOffsets: offsets)
  }
}
