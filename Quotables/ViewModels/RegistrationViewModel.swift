//
//  RegistrationViewModel.swift
//  Quotables
//
//  Created by Dinesh Polisetty on 5/20/24.
//

import Foundation

@MainActor
final class RegistrationViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func createAccount() {
        guard !email.isEmpty, !password.isEmpty else {
            print("Please enter details")
            return
        }
        
        Task {
            do {
                let userData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(userData)
            }
            catch {
                print("Error:  \(error)")
            }
        }

    }
}
