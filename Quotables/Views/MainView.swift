//
//  MainView.swift
//  Quotables
//
//  Created by Dinesh Polisetty on 5/20/24.
//

import SwiftUI

struct MainView: View {
    @State var showLogInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack{
                QuotebookView()
            }
        }
        .onAppear() {
            let authenticatedUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showLogInView = authenticatedUser == nil
        }
        .fullScreenCover(isPresented: $showLogInView) {
            NavigationStack {
                LoginView()
            }
        }
    }
}

#Preview {
    MainView()
}
