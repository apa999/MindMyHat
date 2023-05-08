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

    ZStack {
      NavigationView {
        List(viewModel.hats) {hat in
          HatListViewCell(hat: hat)

            .onTapGesture {
              viewModel.selectedHat = hat
              viewModel.isShowingDetail = true
            }
        }
        .navigationTitle("🎩 Hats")
      }

      .task {
        viewModel.getHats()
      }
      .blur(radius: viewModel.isShowingDetail ? 20 : 0)

      if viewModel.isShowingDetail {
          HatDetailView(hat: viewModel.selectedHat!,
                              isShowingDetail: $viewModel.isShowingDetail)
      }
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
