  //
  //  MindMyHatView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 07/05/2023.
  //

import SwiftUI

struct MindMyHatView: View {
  var body: some View {
    TabView{
      HatsListView()
        .tabItem{
          Image(systemName: "graduationcap")
          Text("Hats")
        }

      AccountView()
        .tabItem{
          Image(systemName: "person")
          Text("Account")
        }

      OrderView()
        .tabItem{
          Image(systemName: "bag")
          Text("Shopping bag")
        }
    }
    .tint(Color(MindMyHat.defaultColour))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MindMyHatView()
  }
}
