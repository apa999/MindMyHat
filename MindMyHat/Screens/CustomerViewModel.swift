  //
  //  CustomerViewModel.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 09/05/2023.
  //



import SwiftUI

final class CustomerViewModel: ObservableObject {

  @AppStorage("Customer") private var customerData: Data?
  @Published var customer = Customer()
  @Published var alertItem: AlertItem?

  func saveChanges() {
    guard isValidForm else { return }

    do {
      let data = try JSONEncoder().encode(customer)
      customerData = data
      alertItem = AlertContext.userSaveSuccess
    } catch {
      alertItem = AlertContext.invalidUserData
    }
  }

  func retrieveUser() {
    guard let customerData else { return }

    do {
      customer = try JSONDecoder().decode(Customer.self, from: customerData)
    } catch {
      alertItem = AlertContext.invalidUserData
    }
  }

  var isValidForm: Bool {
    guard !customer.firstName.isEmpty && !customer.lastName.isEmpty && !customer.email.isEmpty else {
      alertItem = AlertContext.invalidForm
      return false
    }

    guard customer.email.isValidEmail else {
      alertItem = AlertContext.invalidEmail
      return false
    }

    return true
  }
}

