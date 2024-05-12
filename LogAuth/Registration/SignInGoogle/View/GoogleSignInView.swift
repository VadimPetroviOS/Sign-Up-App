//
//  GoogleSignInView.swift
//  LogAuth
//
//  Created by Вадим on 12.05.2024.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

struct GoogleSignInView<ViewModel: GoogleSignInViewModelProtocol>: View {
    
    @StateObject
    private var viewModel: ViewModel
    
    init() where ViewModel == GoogleSignInViewModel {
        _viewModel = StateObject(
            wrappedValue: GoogleSignInViewModel()
        )
    }
    
    var body: some View {
        GoogleSignInButton(
            viewModel: GoogleSignInButtonViewModel(
                scheme: .dark,
                style: .wide,
                state: .normal
            )) {
                viewModel.signInGoogle()
            }
            .sheet(isPresented: $viewModel.showFinalView) {
                FinalView()
            }
    }
}

#Preview {
    GoogleSignInView()
}
