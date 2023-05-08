  //
  //  HatsListView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 08/05/2023.
  //

import SwiftUI


struct HatsListView: View {

  @StateObject var viewModel = HatListViewModel()

  var body: some View {
    NavigationView {
      List(viewModel.hats) {hat in
        HatListViewCell(hat: hat)
      }
      .navigationTitle("🎩 Hats")
    }

    .onAppear {
      viewModel.getHats()
    }

    .alert(item: $viewModel.alertItem) { alertItem in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dismissButton)
    }
  }
}

struct HatsListView_Previews: PreviewProvider {
  static var previews: some View {
    HatsListView()
  }
}
