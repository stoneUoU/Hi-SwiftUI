//
//  SendRequestView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/14.
//
import SwiftUI
import SwiftyJSON

let HSAURL:String = "https://fuwu.nhsa.gov.cn/ebus/fuwu/api/base/api/unitCfg";

//class SendRequestRespModel: ObservableObject {
//    @Published var count = 0
//}

class HiRequest:ObservableObject {
    @Published var respModel:HiUnitCfgRespModel?
    func fetchDatas(callback:@escaping (_ respModel:HiUnitCfgRespModel)->()) {
//        var params = Dictionary<String,Any>();
//        params["contractVersionQueryDTO"] = ["contractType":4];
//        params["noticeTypeParamDTO"] = [:];
//        var sendParams: [String: Any] = ["appId":"19E179E5DC29C05E65B90CDE57A1C7E5","encType":"plain","signType":"plain","timestamp":"1652165413","transType":"ec.queryCode","version":"1.0.0"];
//        sendParams["data"] = params;
//        HiAlamofire.requestData(HSAURL, .POST,parameters: sendParams,of: HiBaseModel<HiUnitCfgRespModel>.self) { result in
//            let resp:HiBaseModel = result as! HiBaseModel<HiUnitCfgRespModel>;
//            debugPrint(resp.toJSON());
//        }
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
}

struct SendRequestView: View {
//    @StateObject private var respModel = SendRequestRespModel()
    @StateObject var hiRequest = HiRequest()
    var body: some View {
        VStack{
            Text("SwiftUI 测试 \(hiRequest.respModel?.appVersion?.newVersion ?? "")")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .padding()
                .background(Color.white)
            Button(action: {
//                respModel.count += 1;
                UserDefaults.standard.setValue("I am SwiftUI Question", forKey: "userName")
            }, label: {
                Text("SAVE")
              .foregroundColor(.white)
              .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
              .background(Color.red)
              .clipShape(Capsule())
            })
            if let options:HiUnitCfgRespModel = hiRequest.respModel {
                SendRequestSonView(respModel: options)
            }
        }.onAppear {
            hiRequest.fetchDatas { resp in
            };
        }
    }
}

struct SendRequestSonView: View {
    @ObservedObject var respModel: HiUnitCfgRespModel
    @AppStorage("userName") var userName:String?
    @State var user: String?
    var body: some View {
        VStack{
            Text("展示： \(respModel.newCntrVer?.title ?? "")")
                .font(.title)
                .foregroundColor(Color.green)
                .padding()
                .background(Color.white)
            Text(userName ?? "").padding(EdgeInsets(top: 36, leading: 16, bottom: 0, trailing: 16))
            Text(user ?? "").padding(EdgeInsets(top: 36, leading: 16, bottom: 0, trailing: 16))
        }.onAppear {
            user = UserDefaults.standard.string(forKey: "userName")
          }
    }
}
