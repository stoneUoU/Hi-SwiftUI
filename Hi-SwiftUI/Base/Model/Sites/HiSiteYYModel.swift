//
//  HiSiteYYModel.swift
//
//
//  Created by JSONConverter on 2025/04/27.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation

@objcMembers
class HiSiteYYModel: NSObject, YYModel,ObservableObject {
    var allList = [HiSiteYYModelAllList]()
    var openList = [HiSiteYYModelOpenList]()
    var unOpenList = [String]()

    static func modelContainerPropertyGenericClass() -> [String : Any]? {
        ["allList": HiSiteYYModelAllList.self,
"openList": HiSiteYYModelOpenList.self]
    }
}

@objcMembers
class HiSiteYYModelAllList: NSObject, YYModel,ObservableObject {
    var appId: String?
    var applicationId: String?
    var applicationName: String?
    var area: String?
    var areaName: String?
    var createTime: Int = 0
    var descriptions: String?
    var highLightIconUrl: String?
    var iconUrl: String?
    var id: String?
    var openFlag: String?
    var packageUploadUrl: String?
    var testUploadUrl: String?
    var version: String?
    var versionCreateTime: Int = 0
    var versionStatus: String?
    
    static func modelContainerPropertyGenericClass() -> [String : Any]? {
        ["descriptions":"description"]
    }
}

@objcMembers
class HiSiteYYModelOpenList: NSObject, YYModel,ObservableObject {
    var appId: String?
    var applicationId: String?
    var applicationName: String?
    var area: String?
    var areaName: String?
    var createTime: Int = 0
    var descriptions: String?
    var highLightIconUrl: String?
    var iconUrl: String?
    var id: String?
    var openFlag: String?
    var packageUploadUrl: String?
    var testUploadUrl: String?
    var version: String?
    var versionCreateTime: Int = 0
    var versionStatus: String?
    
    static func modelCustomPropertyMapper() -> [String : Any]? {
        ["descriptions":"description"]
    }
}
