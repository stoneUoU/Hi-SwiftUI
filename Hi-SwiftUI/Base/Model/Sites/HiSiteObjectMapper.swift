//
//  HiSiteObjectMapper.swift
//
//
//  Created by JSONConverter on 2025/04/27.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import ObjectMapper

class HiSiteObjectMapper: Mappable,ObservableObject {
	var allList = [HiSiteObjectMapperAllList]()
	var openList = [HiSiteObjectMapperOpenList]()
	var unOpenList = [String]()

	required init?(map: Map) {}

	func mapping(map: Map) {
		allList    <- map["allList"]
		openList   <- map["openList"]
		unOpenList <- map["unOpenList"]
	}
}

class HiSiteObjectMapperAllList: Mappable,ObservableObject {
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

	required init?(map: Map) {}

	func mapping(map: Map) {
		appId             <- map["appId"]
		applicationId     <- map["applicationId"]
		applicationName   <- map["applicationName"]
		area              <- map["area"]
		areaName          <- map["areaName"]
		createTime        <- map["createTime"]
		description       <- map["description"]
		highLightIconUrl  <- map["highLightIconUrl"]
		iconUrl           <- map["iconUrl"]
		id                <- map["id"]
		openFlag          <- map["openFlag"]
		packageUploadUrl  <- map["packageUploadUrl"]
		testUploadUrl     <- map["testUploadUrl"]
		version           <- map["version"]
		versionCreateTime <- map["versionCreateTime"]
		versionStatus     <- map["versionStatus"]
	}
}

class HiSiteObjectMapperOpenList: Mappable,ObservableObject {
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

	required init?(map: Map) {}

	func mapping(map: Map) {
		appId             <- map["appId"]
		applicationId     <- map["applicationId"]
		applicationName   <- map["applicationName"]
		area              <- map["area"]
		areaName          <- map["areaName"]
		createTime        <- map["createTime"]
		description       <- map["description"]
		highLightIconUrl  <- map["highLightIconUrl"]
		iconUrl           <- map["iconUrl"]
		id                <- map["id"]
		openFlag          <- map["openFlag"]
		packageUploadUrl  <- map["packageUploadUrl"]
		testUploadUrl     <- map["testUploadUrl"]
		version           <- map["version"]
		versionCreateTime <- map["versionCreateTime"]
		versionStatus     <- map["versionStatus"]
	}
}
