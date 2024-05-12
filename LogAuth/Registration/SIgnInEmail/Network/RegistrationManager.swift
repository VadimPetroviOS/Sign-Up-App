//
//  RegistrationManager.swift
//  LogAuth
//
//  Created by Вадим on 09.05.2024.
//

import Foundation
import FirebaseAuth

protocol RegistrationModelProtocol {
    func createUser(email: String, password: String) async throws -> RegDataResultModel
}

final class RegistrationManager: RegistrationModelProtocol {
    func createUser(email: String, password: String) async throws -> RegDataResultModel {
        let authDataResult = try await Auth.auth().createUser(
            withEmail: email,
            password: password
        )
        
        return RegDataResultModel(user: authDataResult.user)
    }
}
