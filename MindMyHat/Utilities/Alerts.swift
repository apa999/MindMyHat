  //
  //  Alerts.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct AlertItem: Identifiable {
  let id           = UUID()
  let title        : Text
  let message      : Text
  let dismissButton: Alert.Button
}


struct AlertContext {

    //MARK: - Data Alerts
  static let invalidData =
  AlertItem(title: Text("Server error"),
            message: Text("The data received from server was invalid."),
            dismissButton: .default(Text("Okay")))

  static let invalidResponse =
  AlertItem(title: Text("Server error"),
            message: Text("Invalid response from server."),
            dismissButton: .default(Text("Okay")))

  static let invalidURL =
  AlertItem(title: Text("Server error"),
            message: Text("There was an issue connecting to the server."),
            dismissButton: .default(Text("Okay")))

  static let unableToComplete =
  AlertItem(title: Text("Server error"),
            message: Text("Unable to compete request at this time."),
            dismissButton: .default(Text("Okay")))

    //MARK: - Customer Form Alerts
  static let fNameIsMissing =
  AlertItem(title: Text("Accounts form error"),
            message: Text("You must enter a first name"),
            dismissButton: .default(Text("Okay")))

  static let lNameIsMissing =
  AlertItem(title: Text("Accounts form error"),
            message: Text("You must enter a last name"),
            dismissButton: .default(Text("Okay")))

  static let emailIsMissing =
  AlertItem(title: Text("Accounts form error"),
            message: Text("You must enter an email"),
            dismissButton: .default(Text("Okay")))

  static let emailIsInvalid =
  AlertItem(title: Text("Accounts form error"),
            message: Text("You must enter a valid email"),
            dismissButton: .default(Text("Okay")))

  static let userSaveFailure =
  AlertItem(title: Text("User Information"),
            message: Text("Failed to save user information"),
            dismissButton: .default(Text("Okay")))

  static let userLoadFailure =
  AlertItem(title: Text("User Information"),
            message: Text("Failed to load user information"),
            dismissButton: .default(Text("Okay")))


  static let userSaveSuccess =
  AlertItem(title: Text("User Information"),
            message: Text("Saved user information"),
            dismissButton: .default(Text("Okay")))

  static let undefinedHatsError =
  AlertItem(title: Text("Hats error"),
            message: Text("Unable to get hats"),
            dismissButton: .default(Text("Okay")))

  static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                          message: Text("Please ensure all fields in the form have been filled out."),
                                          dismissButton: .default(Text("OK")))

  static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                          message: Text("Please ensure your email is correct."),
                                          dismissButton: .default(Text("OK")))

  static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                          message: Text("There was an error saving or retrieving your profile."),
                                          dismissButton: .default(Text("OK")))
}

