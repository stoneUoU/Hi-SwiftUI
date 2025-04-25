//
//  SendRequestView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/14.
//
import SwiftUI

struct SendRequestView: View {
    @StateObject var hiRequest = HiRequest()
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Spacer()
                if let options:HiUnitCfgRespModel = hiRequest.respModel {
                    SendRequestSonView(respModel: options,kakaJSON: hiRequest.kakaJSON,objectMapper: hiRequest.objectMapper!,swiftyJSON: hiRequest.swiftyJSON!,yyModel: hiRequest.yyModel,handyJSON: hiRequest.handyJSON) { str in
                        hiRequest.fetchDatas { resp in
                        };
                    }
                }
                Spacer()
            }
            Spacer()
        }.background(Color.white).onAppear {
            hiRequest.fetchDatas { resp in
            };
        }
    }
}

struct SendRequestSonView: View {
    @ObservedObject var respModel: HiUnitCfgRespModel
    @ObservedObject var kakaJSON:HiUnitCfgKakaJSON
    @ObservedObject var objectMapper:HiUnitCfgObjectMapper
    @ObservedObject var swiftyJSON:HiUnitCfgSwiftyJSON
    @ObservedObject var yyModel:HiUnitCfgYYModel
    @ObservedObject var handyJSON:HiUnitCfgHandyJSON
    
    let clickHandle: (String) -> Void
    var body: some View {
        VStack{
            Text(kakaJSON.appVersion?.title ?? "")
                .padding()
                .foregroundColor(.red)
                .cornerRadius(10).padding(.bottom,36)
            Text(objectMapper.newCntrVer?.title ?? "")
                .padding()
                .foregroundColor(.red)
                .cornerRadius(10).padding(.bottom,36)
            Text(swiftyJSON.newCntrVer.title)
                .padding()
                .foregroundColor(.red)
                .cornerRadius(10).padding(.bottom,36)
            Text(yyModel.newCntrVer?.title ?? "")
                .padding()
                .foregroundColor(.red)
                .cornerRadius(10).padding(.bottom,36)
            Text(handyJSON.newCntrVer?.title ?? "")
                .padding()
                .foregroundColor(.red)
                .cornerRadius(10).padding(.bottom,36)
            Text(respModel.newCntrVer?.title ?? "")
                .padding()
                .foregroundColor(.red)
                .cornerRadius(10).padding(.bottom,36)
            Button(action: {
                clickHandle("Swift UI");
            }) {
                Text("Json 测试")
                    .padding()
                    .foregroundColor(.red)
                    .cornerRadius(10)
            }
        }.onAppear {
      }
    }
}
