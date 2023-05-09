  //
  //  CustomerView.swift
  //  MindMyHat
  //
  //  Created by Anthony Abbott on 09/05/2023.
  //


import SwiftUI

struct CustomerView: View {
  
  @StateObject var viewModel = CustomerViewModel()
  @FocusState private var focusedTextField: FormTextField?
  
  enum FormTextField {
    case firstName, lastName, email
  }
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Personal Info")) {
          TextField("First Name", text: $viewModel.customer.firstName)
            .focused($focusedTextField, equals: .firstName)
            .onSubmit { focusedTextField = .lastName }
            .submitLabel(.next)

          TextField("Last Name", text: $viewModel.customer.lastName)
            .focused($focusedTextField, equals: .lastName)
            .onSubmit { focusedTextField = .email }
            .submitLabel(.next)

          TextField("Email", text: $viewModel.customer.email)
            .focused($focusedTextField, equals: .email)
            .onSubmit { focusedTextField = nil }
            .submitLabel(.continue)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .disableAutocorrection(true)

          Button {
            viewModel.saveChanges()
          } label: {
            Text("Save Changes")
          }
        }
      }
      .navigationTitle("Customer")
      .toolbar {
        ToolbarItemGroup(placement: .keyboard) {
          Button("Dismiss") { focusedTextField = nil }
        }
      } // Form
    } // NavigationView
    .onAppear {
      viewModel.retrieveUser()
    }
    .alert(item: $viewModel.alertItem) { alertItem in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dismissButton)
    }
  } // View
}

struct CustomerView_Previews: PreviewProvider {
  static var previews: some View {
    CustomerView()
  }
}
