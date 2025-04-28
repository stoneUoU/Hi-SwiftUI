//
//  HiSiteHandyJSON.swift
//
//
//  Created by JSONConverter on 2025/04/27.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

class HiSiteHandyJSON: HandyJSON,ObservableObject {
    var allList = [HiSiteHandyJSONAllList]()
    var openList = [HiSiteHandyJSONOpenList]()
    var unOpenList = [String]()

    required init() {}
}

class HiSiteHandyJSONOpenList: HandyJSON {
    var appId: String?
    var applicationId: String?
    var applicationName: String?
    var area: String?
    var areaName: String?
    var createTime: Int = 0
    var description: String?
    var highLightIconUrl: String?
    var iconUrl: String?
    var id: String?
    var openFlag: String?
    var packageUploadUrl: String?
    var testUploadUrl: String?
    var version: String?
    var versionCreateTime: Int = 0
    var versionStatus: String?

    required init() {}
}

class HiSiteHandyJSONAllList: HandyJSON {
    var appId: String?
    var applicationId: String?
    var applicationName: String?
    var area: String?
    var areaName: String?
    var createTime: Int = 0
    var description: String?
    var highLightIconUrl: String?
    var iconUrl: String?
    var id: String?
    var openFlag: String?
    var packageUploadUrl: String?
    var testUploadUrl: String?
    var version: String?
    var versionCreateTime: Int = 0
    var versionStatus: String?

    required init() {}
}
