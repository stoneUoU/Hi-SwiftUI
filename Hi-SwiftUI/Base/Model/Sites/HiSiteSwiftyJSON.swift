//
//  HiSiteSwiftyJSON.swift
//
//
//  Created by JSONConverter on 2025/04/27.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import SwiftyJSON

class HiSiteSwiftyJSON:ObservableObject {
    var allList = [HiSiteSwiftyJSONAllList]()
    var openList = [HiSiteSwiftyJSONOpenList]()
    var unOpenList = [String]()

    init(json: JSON) {
        allList = json["allList"].arrayValue.compactMap({ HiSiteSwiftyJSONAllList(json: $0)})
        openList = json["openList"].arrayValue.compactMap({ HiSiteSwiftyJSONOpenList(json: $0)})
        unOpenList = json["unOpenList"].arrayValue.compactMap({$0.stringValue})
    }
}

class HiSiteSwiftyJSONAllList:ObservableObject {
    var appId: String
    var applicationId: String
    var applicationName: String
    var area: String
    var areaName: String
    var createTime: Int = 0
    var description: String
    var highLightIconUrl: String
    var iconUrl: String
    var id: String
    var openFlag: String
    var packageUploadUrl: String
    var testUploadUrl: String
    var version: String
    var versionCreateTime: Int = 0
    var versionStatus: String

    init(json: JSON) {
        appId = json["appId"].stringValue
        applicationId = json["applicationId"].stringValue
        applicationName = json["applicationName"].stringValue
        area = json["area"].stringValue
        areaName = json["areaName"].stringValue
        createTime = json["createTime"].intValue
        description = json["description"].stringValue
        highLightIconUrl = json["highLightIconUrl"].stringValue
        iconUrl = json["iconUrl"].stringValue
        id = json["id"].stringValue
        openFlag = json["openFlag"].stringValue
        packageUploadUrl = json["packageUploadUrl"].stringValue
        testUploadUrl = json["testUploadUrl"].stringValue
        version = json["version"].stringValue
        versionCreateTime = json["versionCreateTime"].intValue
        versionStatus = json["versionStatus"].stringValue
    }
}

class HiSiteSwiftyJSONOpenList:ObservableObject {
    var appId: String
    var applicationId: String
    var applicationName: String
    var area: String
    var areaName: String
    var createTime: Int = 0
    var description: String
    var highLightIconUrl: String
    var iconUrl: String
    var id: String
    var openFlag: String
    var packageUploadUrl: String
    var testUploadUrl: String
    var version: String
    var versionCreateTime: Int = 0
    var versionStatus: String

    init(json: JSON) {
        appId = json["appId"].stringValue
        applicationId = json["applicationId"].stringValue
        applicationName = json["applicationName"].stringValue
        area = json["area"].stringValue
        areaName = json["areaName"].stringValue
        createTime = json["createTime"].intValue
        description = json["description"].stringValue
        highLightIconUrl = json["highLightIconUrl"].stringValue
        iconUrl = json["iconUrl"].stringValue
        id = json["id"].stringValue
        openFlag = json["openFlag"].stringValue
        packageUploadUrl = json["packageUploadUrl"].stringValue
        testUploadUrl = json["testUploadUrl"].stringValue
        version = json["version"].stringValue
        versionCreateTime = json["versionCreateTime"].intValue
        versionStatus = json["versionStatus"].stringValue
    }
}
