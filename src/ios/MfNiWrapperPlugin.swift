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



