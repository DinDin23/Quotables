//
//  RegistrationView.swift
//  Quotables
//
//  Created by Dinesh Polisetty on 5/20/24.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject private var viewModel = RegistrationViewModel()
    
    var body: some View {
        VStack {
            // Space for logo image
            Image("logo-no-background")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)

            Spacer().frame(height: 50)
            
            // Email field
            TextField("Email", text: $viewModel.email)
                .padding()
                .background(Color(.secondarySystemBackground))
                .autocapitalization(.none)
                .cornerRadius(8)
                .padding(.horizontal, 24)

            // Password field
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color(.secondarySystemBackground))
                .autocapitalization(.none)
                .cornerRadius(8)
                .padding(.horizontal, 24)

            // Login button
            Button(action: {
                viewModel.createAccount()
            }) {
                Text("Sign Up")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 24)
                    .padding(.top, 10)
            }
            
        }
    }
}

#Preview {
    RegistrationView()
}
