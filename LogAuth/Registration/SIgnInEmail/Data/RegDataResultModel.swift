//
//  RegDataResultModel.swift
//  LogAuth
//
//  Created by Вадим on 09.05.2024.
//

import Foundation
import FirebaseAuth

struct RegDataResultModel {
    let uid: String
    let email: String?
}

extension RegDataResultModel {
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
    }
}
