//
//  HiListAppModuleRespModel.swift
//
//
//  Created by JSONConverter on 2025/03/21.
//  Copyright © 2025年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

class HiListAppModuleRespModel: HandyJSON,ObservableObject {
	var bindTypePage = [HiListAppModuleRespModelBindTypePage]()
	var certifyPage = [HiListAppModuleRespModelCertifyPage]()
	var ecodePage = [HiListAppModuleRespModelEcodePage]()
	var familyPage = [HiListAppModuleRespModelFamilyPage]()
	var handleGuidePage = [HiListAppModuleRespModelHandleGuidePage]()
	var homeCarePage = [HiListAppModuleRespModelHomeCarePage]()
	var homePage = [HiListAppModuleRespModelHomePage]()
	var loginPage = [HiListAppModuleRespModelLoginPage]()
	var personalPage = [HiListAppModuleRespModelPersonalPage]()
	var selectDownPage = [HiListAppModuleRespModelSelectDownPage]()
	var tabBarPage = [HiListAppModuleRespModelTabBarPage]()

	required init() {}
}

class HiListAppModuleRespModelHandleGuidePage: HandyJSON {
	var childs = [HiListAppModuleRespModelHandleGuidePageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelHandleGuidePageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelHandleGuidePageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHandleGuidePageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelHandleGuidePageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelHandleGuidePageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelHandleGuidePageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHandleGuidePageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelHandleGuidePageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelHandleGuidePageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHomePage: HandyJSON {
	var childs = [HiListAppModuleRespModelHomePageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var imgUrl: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelHomePageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelHomePageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var imgUrl: String?
	var item: HiListAppModuleRespModelHomePageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelHomePageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelHomePageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHomePageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelHomePageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelHomePageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHomePageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelSelectDownPage: HandyJSON {
	var childs = [HiListAppModuleRespModelSelectDownPageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var imgUrl: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelSelectDownPageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelSelectDownPageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelSelectDownPageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var imgUrl: String?
	var item: HiListAppModuleRespModelSelectDownPageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelSelectDownPageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelSelectDownPageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelSelectDownPageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelSelectDownPageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelSelectDownPageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelLoginPage: HandyJSON {
	var childs = [HiListAppModuleRespModelLoginPageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelLoginPageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelLoginPageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelLoginPageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelLoginPageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelLoginPageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelLoginPageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelLoginPageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelLoginPageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelLoginPageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelTabBarPage: HandyJSON {
	var childs = [HiListAppModuleRespModelTabBarPageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelTabBarPageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelTabBarPageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelTabBarPageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelTabBarPageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelTabBarPageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelTabBarPageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelTabBarPageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelTabBarPageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelTabBarPageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelPersonalPage: HandyJSON {
	var childs = [HiListAppModuleRespModelPersonalPageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelPersonalPageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelPersonalPageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelPersonalPageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelPersonalPageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelPersonalPageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelPersonalPageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelPersonalPageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelPersonalPageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelPersonalPageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelEcodePage: HandyJSON {
	var childs = [HiListAppModuleRespModelEcodePageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelEcodePageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelEcodePageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var imgUrl: String?
	var item: HiListAppModuleRespModelEcodePageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelEcodePageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelEcodePageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelEcodePageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelEcodePageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelEcodePageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelEcodePageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelBindTypePage: HandyJSON {
	var childs = [HiListAppModuleRespModelBindTypePageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelBindTypePageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelBindTypePageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelBindTypePageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelBindTypePageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelBindTypePageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelBindTypePageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelBindTypePageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var moduStyl: HiListAppModuleRespModelBindTypePageChildsItemModuStyl?
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelBindTypePageChildsItemModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelFamilyPage: HandyJSON {
	var childs = [HiListAppModuleRespModelFamilyPageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelFamilyPageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelFamilyPageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelFamilyPageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelFamilyPageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelFamilyPageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelFamilyPageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelFamilyPageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelCertifyPage: HandyJSON {
	var childs = [HiListAppModuleRespModelCertifyPageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelCertifyPageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelCertifyPageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelCertifyPageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelCertifyPageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelCertifyPageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelCertifyPageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}

class HiListAppModuleRespModelCertifyPageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHomeCarePage: HandyJSON {
	var childs = [HiListAppModuleRespModelHomeCarePageChilds]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var key: String?
	var moduStyl: HiListAppModuleRespModelHomeCarePageModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelHomeCarePageModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHomeCarePageChilds: HandyJSON {
	var childs = [String]()
	var clientType: String?
	var content: String?
	var grpId: Int = 0
	var grpStas: String?
	var grpType: String?
	var item: HiListAppModuleRespModelHomeCarePageChildsItem?
	var key: String?
	var moduStyl: HiListAppModuleRespModelHomeCarePageChildsModuStyl?
	var pageKey: String?
	var ver: String?

	required init() {}
}

class HiListAppModuleRespModelHomeCarePageChildsModuStyl: HandyJSON {
	var fontSize: String?
	var textColor: String?

	required init() {}
}

class HiListAppModuleRespModelHomeCarePageChildsItem: HandyJSON {
	var checkLevel: Int = 0
	var clientType: Int = 0
	var content: String?
	var imgUrl: String?
	var linkType: Int = 0
	var moduStas: Int = 0
	var shareStas: String?
	var subContent: String?
	var subKey: String?
	var url: String?

	required init() {}
}
