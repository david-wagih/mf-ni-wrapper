//
//  CardViewController.swift
//  CardManagementSDKSwiftSample
//
//  Created by Paula Radu on 25.11.2022.
//

import UIKit
import NICardManagementSDK
import Combine

let sdk = NICardManagementAPI(
            rootUrl: rootUrl,
            cardIdentifierId: cardIdentifierId,
            cardIdentifierType: cardIdentifierType,
            bankCode: bankCode,
            tokenFetchable: NICardManagementTokenFetchable
)



