//
//  HiUnitCfgRespModel.swift
//
//
//  Created by JSONConverter on 2025/03/14.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

class HiBaseModel<T:Decodable>: Decodable, HandyJSON {
	var appId: String?
	var code: Int = 0
    var data : T?
	var encType: String?
	var message: String?
	var signType: String?
	var timestamp: String?
	var type: String?

	required init() {}
}

@objcMembers
class HiUnitCfgRespModel: Decodable, HandyJSON, ObservableObject {
	var appVersion: HiUnitCfgRespModelDataAppVersion?
	var newCntrVer: HiUnitCfgRespModelDataNewCntrVer?
	var topList: HiUnitCfgRespModelDataTopList?

	required init() {}
}

class HiUnitCfgRespModelDataNewCntrVer: Decodable, HandyJSON {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?

	required init() {}
}

class HiUnitCfgRespModelDataAppVersion: Decodable, HandyJSON {
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

class HiUnitCfgRespModelDataTopList: Decodable, HandyJSON {
	var list = [HiUnitCfgRespModelDataTopListList]()

	required init() {}
}

class HiUnitCfgRespModelDataTopListList: Decodable, HandyJSON {
	var bizCode: String?
	var newsId: String?
	var newsPkId: Int = 0
	var picUrl: String?
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
