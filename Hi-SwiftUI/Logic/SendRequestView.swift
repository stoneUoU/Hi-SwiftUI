//
//  SendRequestView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/14.
//
import SwiftUI
import SwiftyJSON

class HiRequest:ObservableObject {
    @Published var respModel:HiUnitCfgRespModel?
    @Published var settingModel:HiListAppModuleRespModel?
    @Published var topListModel:HiTopListRespModel?
    
    func fetchDatas(callback:@escaping (_ respModel:HiUnitCfgRespModel)->()) {
        var params = Dictionary<String,Any>();
        params["contractVersionQueryDTO"] = ["contractType":4];
        params["noticeTypeParamDTO"] = [:];
        HiAPI.request(.fetchUnitCfg(params), success: { json in
            let dataHandyJSON:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            if let handyJSON:HiUnitCfgRespModel = HiUnitCfgRespModel.deserialize(from: dataHandyJSON) {
                self.respModel = handyJSON;
                callback(handyJSON);
            }
        }, error: { statusCode in
            callback(HiUnitCfgRespModel());
        }, failure: { error in
            callback(HiUnitCfgRespModel());
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
}

struct SendRequestView: View {
    @StateObject var hiRequest = HiRequest()
    var body: some View {
        VStack{
            Text("SwiftUI 测试 \(hiRequest.respModel?.appVersion?.newVersion ?? "")")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .padding()
                .background(Color.white)
            if let options:HiUnitCfgRespModel = hiRequest.respModel {
                SendRequestSonView(respModel: options) { str in
                    print("str_____\(str)");
                }
            }
            if let options:[HiListAppModuleRespModelHomePage] = hiRequest.settingModel?.homePage {
                List(options, id: \.key) { item in
                    Text(item.content ?? "").font(.title)
                        .foregroundColor(Color.red)
                        .padding()
                        .background(Color.white)
                }
            }
        }.onAppear {
            hiRequest.fetchDatas { resp in
            };
            hiRequest.fetchHomeDatas { resp in
            };
        }
    }
}

struct SendRequestSonView: View {
    @ObservedObject var respModel: HiUnitCfgRespModel
    let clickHandle: (String) -> Void
    var body: some View {
        VStack{
            Text("展示： \(respModel.newCntrVer?.title ?? "")")
                .font(.title)
                .foregroundColor(Color.green)
                .padding()
                .background(Color.white)
            Button("点击") {
                clickHandle("Swift UI");
            }
        }.onAppear {
      }
    }
}
