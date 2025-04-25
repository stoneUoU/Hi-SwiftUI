//
//  HiUnitCfgYYModel.swift
//
//
//  Created by JSONConverter on 2025/04/25.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation

@objcMembers
class HiUnitCfgYYModel: NSObject, YYModel,ObservableObject {
	var appVersion: HiUnitCfgYYModelAppVersion?
	var newCntrVer: HiUnitCfgYYModelNewCntrVer?
	var topList: HiUnitCfgYYModelTopList?
}

@objcMembers
class HiUnitCfgYYModelTopList: NSObject, YYModel,ObservableObject {
	var list = [HiUnitCfgYYModelTopListList]()

	static func modelContainerPropertyGenericClass() -> [String : Any]? {
		["list": HiUnitCfgYYModelTopListList.self]
	}
}

@objcMembers
class HiUnitCfgYYModelTopListList: NSObject, YYModel,ObservableObject {
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
}

@objcMembers
class HiUnitCfgYYModelAppVersion: NSObject, YYModel,ObservableObject {
	var content: String?
	var newVersion: String?
	var newVersionSize: String?
	var sysType: String?
	var title: String?
	var updateState: String?
	var url: String?
	var version: String?
}

@objcMembers
class HiUnitCfgYYModelNewCntrVer: NSObject, YYModel,ObservableObject {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?
}
