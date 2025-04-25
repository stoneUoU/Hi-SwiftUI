//
//  HiUnitCfgKakaJSON.swift
//
//
//  Created by JSONConverter on 2025/04/25.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import KakaJSON

class HiUnitCfgKakaJSON: Convertible,ObservableObject {
	var appVersion: HiUnitCfgKakaJSONAppVersion?
	var newCntrVer: HiUnitCfgKakaJSONNewCntrVer?
	var topList: HiUnitCfgKakaJSONTopList?

	required init() {}
}

class HiUnitCfgKakaJSONNewCntrVer: Convertible,ObservableObject {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?

	required init() {}
}

class HiUnitCfgKakaJSONAppVersion: Convertible,ObservableObject {
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

class HiUnitCfgKakaJSONTopList: Convertible,ObservableObject {
	var list = [HiUnitCfgKakaJSONTopListList]()

	required init() {}
}

class HiUnitCfgKakaJSONTopListList: Convertible,ObservableObject {
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
