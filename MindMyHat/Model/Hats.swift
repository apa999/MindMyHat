  //
  //  Hats.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import Foundation

  // MARK: - Hats
struct Hats: Codable {
  let hats: [Hat]

  enum CodingKeys: String, CodingKey {
    case hats = "Hats"
  }
}


  // MARK: - Hat
struct Hat: Codable, Identifiable {
  let id: Int
  let title, image, description: String
  let price: Double
}
