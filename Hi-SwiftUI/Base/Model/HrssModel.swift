//
//  HrssModel.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/6/10.
//

import Foundation
import SwiftyJSON

class HrssModel:ObservableObject {
    var title: String
    var iconUrl: String
    var bgUrl: String
    init(json: JSON) {
        title = json["title"].stringValue
        iconUrl = json["iconUrl"].stringValue
        bgUrl = json["bgUrl"].stringValue
    }
}
