//
//  GoogleSignInViewModelProtocol.swift
//  LogAuth
//
//  Created by Вадим on 12.05.2024.
//

import Foundation

@MainActor
protocol GoogleSignInViewModelProtocol: ObservableObject {
    var showFinalView: Bool { get set }
    func signInGoogle()
}
