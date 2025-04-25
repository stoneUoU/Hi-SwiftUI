//
//  HiUnitCfgHandyJSON.swift
//
//
//  Created by JSONConverter on 2025/04/25.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

class HiUnitCfgHandyJSON: HandyJSON,ObservableObject {
	var appVersion: HiUnitCfgHandyJSONAppVersion?
	var newCntrVer: HiUnitCfgHandyJSONNewCntrVer?
	var topList: HiUnitCfgHandyJSONTopList?

	required init() {}
}

class HiUnitCfgHandyJSONTopList: HandyJSON,ObservableObject {
	var list = [HiUnitCfgHandyJSONTopListList]()

	required init() {}
}

class HiUnitCfgHandyJSONTopListList: HandyJSON,ObservableObject {
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

	required init() {}
}

class HiUnitCfgHandyJSONAppVersion: HandyJSON,ObservableObject {
	var content: String?
	var newVersion: String?
	var newVersionSize: String?
	var sysType: String?
	var title: String?
	var updateState: String?
	var url: String?
	var version: String?

	required init() {}
}

class HiUnitCfgHandyJSONNewCntrVer: HandyJSON,ObservableObject {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?

	required init() {}
}
