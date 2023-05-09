  //
  //  MindMyHatApp.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 07/05/2023.
  //

import SwiftUI

@main
struct MindMyHatApp: App {
  
  var order = Order()
  
  var body: some Scene {
    WindowGroup {
      MindMyHatView().environmentObject(order)
    }
  }
}
