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
//                if  let hiObjectMapper = hiRequest.hiObjectMapper {
//                    SendRequestSonView(kakaJSON: hiRequest.hiKakaJSON,objectMapper: hiObjectMapper,swiftyJSON: hiRequest.hiSwiftyJSON!,yyModel: hiRequest.hiYYModel,handyJSON: hiRequest.hiHandyJSON) { str in
//                        hiRequest.fetchDatas { resp in
//                        };
//                    }
//                }
                Spacer()
            }
            Spacer()
        }.background(Color.white).onAppear {
            hiRequest.fetchSiteDatas{ resp in
            };
        }
    }
}

//struct SendRequestSonView: View {
//    @ObservedObject var kakaJSON:HiSiteKakaJSON
//    @ObservedObject var objectMapper:HiSiteObjectMapper
//    @ObservedObject var swiftyJSON:HiSiteSwiftyJSON
//    @ObservedObject var yyModel:HiSiteYYModel
//    @ObservedObject var handyJSON:HiSiteHandyJSON
//    
//    let clickHandle: (String) -> Void
//    var body: some View {
//        VStack{
//            Text(kakaJSON.openList[0].description ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(objectMapper.openList[1].description ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(swiftyJSON.openList[0].description)
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(yyModel.openList[1].descriptions ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(handyJSON.openList[4].description ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Button(action: {
//                clickHandle("Swift UI");
//            }) {
//                Text("Json 测试")
//                    .padding()
//                    .foregroundColor(.red)
//                    .cornerRadius(10)
//            }
//        }.onAppear {
//      }
//    }
//}


//struct SendRequestSonView: View {
//    @ObservedObject var respModel: HiUnitCfgRespModel
//    @ObservedObject var kakaJSON:HiUnitCfgKakaJSON
//    @ObservedObject var objectMapper:HiUnitCfgObjectMapper
//    @ObservedObject var swiftyJSON:HiUnitCfgSwiftyJSON
//    @ObservedObject var yyModel:HiUnitCfgYYModel
//    @ObservedObject var handyJSON:HiUnitCfgHandyJSON
//    
//    let clickHandle: (String) -> Void
//    var body: some View {
//        VStack{
//            Text(kakaJSON.appVersion?.title ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(objectMapper.newCntrVer?.title ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(swiftyJSON.newCntrVer.title)
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(yyModel.newCntrVer?.title ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(handyJSON.newCntrVer?.title ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Text(respModel.newCntrVer?.title ?? "")
//                .padding()
//                .foregroundColor(.red)
//                .cornerRadius(10).padding(.bottom,36)
//            Button(action: {
//                clickHandle("Swift UI");
//            }) {
//                Text("Json 测试")
//                    .padding()
//                    .foregroundColor(.red)
//                    .cornerRadius(10)
//            }
//        }.onAppear {
//      }
//    }
//}
