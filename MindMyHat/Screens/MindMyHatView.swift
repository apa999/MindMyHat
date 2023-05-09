  //
  //  MindMyHatView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 07/05/2023.
  //

import SwiftUI

struct MindMyHatView: View {

  @EnvironmentObject var order: Order

  var body: some View {
    TabView{
      HatsListView()
        .tabItem {Label("Hats", systemImage: "graduationcap")}

      CustomerView()
        .tabItem {Label("Customer", systemImage: "graduationcap") }

      OrderView()
        .tabItem{Label("Shopping bag", systemImage: "graduationcap") }
    }
    .tint(Color(MindMyHat.defaultColour))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MindMyHatView()
  }
}
