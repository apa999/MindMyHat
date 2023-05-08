  //
  //  Hats.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import Foundation

  // MARK: - Hats
struct Hats: Decodable {
  let hats: [Hat]

  enum CodingKeys: String, CodingKey {
    case hats = "Hats"
  }
}

  // MARK: - Hat
struct Hat: Decodable, Identifiable {
  let id          : Int
  let title       : String
  let image       : String
  let description : String
  let price       : Double
}

struct MockData {
  static let mockHat0 = Hat(id: 0,
                            title: "Snapback",
                            image: "Snapback",
                            description: "The ’90s style baseball",
                            price: 12.99)

  static let mockHat1 = Hat(id: 1,
                            title: "Beanie",
                            image: "Beanie",
                            description: "The ’90s style baseball",
                            price: 9.99)

  static let mockHat3 = Hat(id: 3,
                            title: "Fedora",
                            image: "Fedora",
                            description: "Love it or hate it, the Fedora ",
                            price: 15.99)

  static let mockHats = [mockHat0, mockHat1, mockHat3]
}
  // MARK: - Example JSON data
// Example of JSON containing three hats
/*
{
  "Hats": [{
  "id" : 0,
  "title" : "Snapback",
  "image" : "Snapback",
  "description" : "The ’90s style baseball cap burst ....",
  "price" : 10.00
},
{
  "id" : 1,
  "title" : "Beanie",
  "image" : "Beanie",
  "description" : "Once a mere winter essential, beanies have become genuinely timeless ...",
  "price" : 10.00
},
{
  "id" : 19,
  "title" : "Top Hat",
  "image" : "TopHat",
  "description" : "There has still never been a piece of headwear as dominating ...",
  "price" : 10.00
}]
}

*/
