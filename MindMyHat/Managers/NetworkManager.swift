  //
  //  NetworkManager.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

final class NetworkManager {

  static let shared = NetworkManager()

  private let cache = NSCache<NSString, UIImage>()

  private init() {}

  func getHats() async throws  -> [Hat] {
    guard let url = URL(string: MindMyHat.baseURL) else { throw HatError.invalidURL }

    let (data, _) = try await URLSession.shared.data(from: url)

    do {
      let decoder = JSONDecoder()

      return try decoder.decode(Hats.self, from: data).hats
    } catch {
      throw HatError.invalidData
    }
  }
}
