  //
  //  CustomModifiers.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI

struct StandardButtonStyle: ViewModifier {

  func body(content: Content) -> some View {
    content
      .buttonStyle(.bordered)
      .tint(.defaultColour)
      .controlSize(.large)
  }
}

extension View {
  func standardButtonStyle() -> some View {
    self.modifier(StandardButtonStyle())
  }
}
