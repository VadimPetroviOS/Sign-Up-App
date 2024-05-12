//
//  SignInViewModelProtocol.swift
//  LogAuth
//
//  Created by Вадим on 09.05.2024.
//

import Foundation

@MainActor
protocol SignInViewModelProtocol: ObservableObject {
    var email: String { get set }
    var password: String { get set }
    var emailExists: Bool { get set }
    var showFinalView: Bool { get set }
    var alertMessage: String { get }
    
    func createUser()
}
