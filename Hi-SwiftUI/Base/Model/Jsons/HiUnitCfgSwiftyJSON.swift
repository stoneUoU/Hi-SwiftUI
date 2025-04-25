//
//  HiUnitCfgSwiftyJSON.swift
//
//
//  Created by JSONConverter on 2025/04/25.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import SwiftyJSON

class HiUnitCfgSwiftyJSON:ObservableObject {
	var appVersion: HiUnitCfgSwiftyJSONAppVersion
	var newCntrVer: HiUnitCfgSwiftyJSONNewCntrVer
	var topList: HiUnitCfgSwiftyJSONTopList

	init(json: JSON) {
		appVersion = HiUnitCfgSwiftyJSONAppVersion(json: json["appVersion"])
		newCntrVer = HiUnitCfgSwiftyJSONNewCntrVer(json: json["newCntrVer"])
		topList = HiUnitCfgSwiftyJSONTopList(json: json["topList"])
	}
}

class HiUnitCfgSwiftyJSONNewCntrVer:ObservableObject {
	var content: String
	var contractType: String
	var createTime: String
	var newVersion: Int = 0
	var title: String

	init(json: JSON) {
		content = json["content"].stringValue
		contractType = json["contractType"].stringValue
		createTime = json["createTime"].stringValue
		newVersion = json["newVersion"].intValue
		title = json["title"].stringValue
	}
}

class HiUnitCfgSwiftyJSONAppVersion:ObservableObject {
	var content: String
	var newVersion: String
	var newVersionSize: String
	var sysType: String
	var title: String
	var updateState: String
	var url: String
	var version: String

	init(json: JSON) {
		content = json["content"].stringValue
		newVersion = json["newVersion"].stringValue
		newVersionSize = json["newVersionSize"].stringValue
		sysType = json["sysType"].stringValue
		title = json["title"].stringValue
		updateState = json["updateState"].stringValue
		url = json["url"].stringValue
		version = json["version"].stringValue
	}
}

class HiUnitCfgSwiftyJSONTopList:ObservableObject {
	var list = [HiUnitCfgSwiftyJSONTopListList]()

	init(json: JSON) {
		list = json["list"].arrayValue.compactMap({ HiUnitCfgSwiftyJSONTopListList(json: $0)})
	}
}

class HiUnitCfgSwiftyJSONTopListList:ObservableObject {
	var bizCode: String
	var newsId: String
	var newsPkId: Int = 0
	var rid: String
	var rlsDate: Int = 0
	var rlsDateStr: String
	var stas: String
	var summary: String
	var title: String
	var url: String
	var visitCount: String
	var visitCountUrl: String

	init(json: JSON) {
		bizCode = json["bizCode"].stringValue
		newsId = json["newsId"].stringValue
		newsPkId = json["newsPkId"].intValue
		rid = json["rid"].stringValue
		rlsDate = json["rlsDate"].intValue
		rlsDateStr = json["rlsDateStr"].stringValue
		stas = json["stas"].stringValue
		summary = json["summary"].stringValue
		title = json["title"].stringValue
		url = json["url"].stringValue
		visitCount = json["visitCount"].stringValue
		visitCountUrl = json["visitCountUrl"].stringValue
	}
}
