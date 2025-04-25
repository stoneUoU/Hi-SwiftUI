//
//  HiUnitCfgObjectMapper.swift
//
//
//  Created by JSONConverter on 2025/04/25.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import ObjectMapper

class HiUnitCfgObjectMapper: Mappable,ObservableObject {
	var appVersion: HiUnitCfgObjectMapperAppVersion?
	var newCntrVer: HiUnitCfgObjectMapperNewCntrVer?
	var topList: HiUnitCfgObjectMapperTopList?

	required init?(map: Map) {}

	func mapping(map: Map) {
		appVersion <- map["appVersion"]
		newCntrVer <- map["newCntrVer"]
		topList    <- map["topList"]
	}
}

class HiUnitCfgObjectMapperTopList: Mappable,ObservableObject {
	var list = [HiUnitCfgObjectMapperTopListList]()

	required init?(map: Map) {}

	func mapping(map: Map) {
		list <- map["list"]
	}
}

class HiUnitCfgObjectMapperTopListList: Mappable,ObservableObject {
	var bizCode: String?
	var newsId: String?
	var newsPkId: Int = 0
	var rid: String?
	var rlsDate: Int = 0
	var rlsDateStr: String?
	var stas: String?
	var summary: String?
	var title: String?
	var url: String?
	var visitCount: String?
	var visitCountUrl: String?

	required init?(map: Map) {}

	func mapping(map: Map) {
		bizCode       <- map["bizCode"]
		newsId        <- map["newsId"]
		newsPkId      <- map["newsPkId"]
		rid           <- map["rid"]
		rlsDate       <- map["rlsDate"]
		rlsDateStr    <- map["rlsDateStr"]
		stas          <- map["stas"]
		summary       <- map["summary"]
		title         <- map["title"]
		url           <- map["url"]
		visitCount    <- map["visitCount"]
		visitCountUrl <- map["visitCountUrl"]
	}
}

class HiUnitCfgObjectMapperAppVersion: Mappable,ObservableObject {
	var content: String?
	var newVersion: String?
	var newVersionSize: String?
	var sysType: String?
	var title: String?
	var updateState: String?
	var url: String?
	var version: String?

	required init?(map: Map) {}

	func mapping(map: Map) {
		content        <- map["content"]
		newVersion     <- map["newVersion"]
		newVersionSize <- map["newVersionSize"]
		sysType        <- map["sysType"]
		title          <- map["title"]
		updateState    <- map["updateState"]
		url            <- map["url"]
		version        <- map["version"]
	}
}

class HiUnitCfgObjectMapperNewCntrVer: Mappable,ObservableObject {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?

	required init?(map: Map) {}

	func mapping(map: Map) {
		content      <- map["content"]
		contractType <- map["contractType"]
		createTime   <- map["createTime"]
		newVersion   <- map["newVersion"]
		title        <- map["title"]
	}
}
