//
//  HatListViewModel.swift
//  MindMyHat
//
//  Created by Anthony Abbott on 08/05/2023.
//

import SwiftUI

@MainActor
final class HatListViewModel: ObservableObject {

  @Published var hats: [Hat] = []
  @Published var alertItem: AlertItem?
  @Published var isShowingDetail = false
  @Published var selectedHat: Hat?

  func getHats() {

    guard hats.isEmpty else { return }

    Task {
      do {
        hats = try await NetworkManager.shared.getHats()
      } catch {
        switch error {
          case HatError.invalidData:
            alertItem = AlertContext.invalidData

          case HatError.invalidResponse:
            alertItem = AlertContext.invalidResponse

          case HatError.invalidURL:
            alertItem = AlertContext.invalidURL

          case HatError.unableToComplete:
            alertItem = AlertContext.unableToComplete

          default:
            alertItem = AlertContext.undefinedHatsError
        }
      }
    }
  }
}
