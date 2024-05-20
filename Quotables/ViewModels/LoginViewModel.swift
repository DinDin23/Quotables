//
//  LoginViewModel.swift
//  Quotables
//
//  Created by Dinesh Polisetty on 5/20/24.
//

import Foundation

@MainActor
final class LoginViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
}
