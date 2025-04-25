//
//  HiRequest.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/25.
//
import SwiftyJSON

class HiRequest:ObservableObject {
    @Published var topListModel:HiTopListRespModel?
    @Published var settingModel:HiListAppModuleRespModel?
    @Published var respModel:HiUnitCfgRespModel?
    
    @Published var kakaJSON:HiUnitCfgKakaJSON = HiUnitCfgKakaJSON()
    @Published var objectMapper:HiUnitCfgObjectMapper?
    @Published var swiftyJSON:HiUnitCfgSwiftyJSON?
    @Published var yyModel:HiUnitCfgYYModel = HiUnitCfgYYModel()
    @Published var handyJSON:HiUnitCfgHandyJSON = HiUnitCfgHandyJSON()
    
    func fetchHSATopList(callback:@escaping (_ respModel:Any)->()) {
        let params = Dictionary<String,Any>();
        HiAPI.request(.fetchHSATopList(params), success: { json in
            let dataHandyJSON:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            if let handyJSON:HiTopListRespModel = HiTopListRespModel.deserialize(from: dataHandyJSON) {
                self.topListModel = handyJSON;
                callback(handyJSON);
            }
        }, error: { statusCode in
            callback(HiListAppModuleRespModel());
        }, failure: { error in
            callback(HiListAppModuleRespModel());
        })
    }
    func fetchHomeDatas(callback:@escaping (_ respModel:Any)->()) {
        var params = Dictionary<String,Any>();
        params["ver"] = "1.3.17";
        params["clntType"] = 2;
        HiAPI.request(.fetchHSAHomeData(params), success: { json in
            let dataHandyJSON:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            if let handyJSON:HiListAppModuleRespModel = HiListAppModuleRespModel.deserialize(from: dataHandyJSON) {
                self.settingModel = handyJSON;
                callback(handyJSON);
            }
        }, error: { statusCode in
            callback(HiListAppModuleRespModel());
        }, failure: { error in
            callback(HiListAppModuleRespModel());
        })
    }
    func fetchDatas(callback:@escaping (_ respModel:HiUnitCfgRespModel)->()) {
        var params = Dictionary<String,Any>();
        params["contractVersionQueryDTO"] = ["contractType":4];
        params["noticeTypeParamDTO"] = [:];
        HiAPI.request(.fetchUnitCfg(params), success: { json in
            let dataHandyJSON:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            if let handyJSON:HiUnitCfgRespModel = HiUnitCfgRespModel.deserialize(from: dataHandyJSON) {
                self.respModel = handyJSON;
                callback(handyJSON);
//                print("HandyJSON______\(JSON(handyJSON.toJSON() ?? ""))");
            }
            
            if let handyJSON:HiUnitCfgHandyJSON = HiUnitCfgHandyJSON.deserialize(from: dataHandyJSON) {
                self.handyJSON = handyJSON;
            }
            
            let swiftyJSON:HiUnitCfgSwiftyJSON = HiUnitCfgSwiftyJSON.init(json: JSON(json)["data"]);
            let dataSwiftyJSONs:[HiUnitCfgSwiftyJSONTopListList] = swiftyJSON.topList.list;
            let dataSwiftyJSON:HiUnitCfgSwiftyJSONTopListList = dataSwiftyJSONs[0];
            self.swiftyJSON = swiftyJSON;
            
            let yyModel:HiUnitCfgYYModel = HiUnitCfgYYModel.yy_model(with: JSON(json)["data"].rawValue as! [AnyHashable : Any])!;
            let dataYYModels:[HiUnitCfgYYModelTopListList] = yyModel.topList?.list ?? [];
            let dataYYModel:HiUnitCfgYYModelTopListList = dataYYModels[0];
            self.yyModel = yyModel;
            
            let putJson:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            let kakaModel:HiUnitCfgKakaJSON = putJson.kj.model(HiUnitCfgKakaJSON.self)
            let dataKakaModels:[HiUnitCfgKakaJSONTopListList] = kakaModel.topList?.list ?? [];
            let dataKakaModel:HiUnitCfgKakaJSONTopListList = dataKakaModels[0];
            self.kakaJSON = kakaModel;
            
            let objectMapperModel:HiUnitCfgObjectMapper = HiUnitCfgObjectMapper(JSON: putJson)!;
            let dataObjectMapperModels:[HiUnitCfgObjectMapperTopListList] = objectMapperModel.topList?.list ?? [];
            let dataObjectMapperModel:HiUnitCfgObjectMapperTopListList = dataObjectMapperModels[0];
            self.objectMapper = objectMapperModel;
            
        }, error: { statusCode in
            callback(HiUnitCfgRespModel());
        }, failure: { error in
            callback(HiUnitCfgRespModel());
        })
    }
}
