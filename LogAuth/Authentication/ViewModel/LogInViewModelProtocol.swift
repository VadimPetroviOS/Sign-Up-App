//
//  LogInViewModelProtocol.swift
//  LogAuth
//
//  Created by Вадим on 10.05.2024.
//

import Foundation

@MainActor
protocol LogInViewModelProtocol: ObservableObject {
    var email: String { get set }
    var password: String { get set }
    var showFinalView: Bool { get set }
    var isValid: Bool { get }
    
    func signIn()
}
