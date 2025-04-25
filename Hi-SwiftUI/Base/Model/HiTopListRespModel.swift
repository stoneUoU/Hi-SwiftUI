//
//  HiTopListRespModel.swift
//
//
//  Created by JSONConverter on 2025/04/24.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

class HiTopListRespModel: HandyJSON,ObservableObject {
	var list = [HiTopListRespModelList]()

	required init() {}
}

class HiTopListRespModelList: HandyJSON,ObservableObject {
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
    var picUrl: String?

	required init() {}
}
