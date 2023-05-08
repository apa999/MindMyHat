//
//  ContentView.swift
//  MindMyHat
//
//  Created by Anthony Abbott on 07/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{
          Task {
            do {
              let hats = try await NetworkManager.shared.getHats()
              print(hats.count)
            } catch {
              print(error)
            }

          }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
