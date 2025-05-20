//
//  SiteView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/27.
//

import SwiftUI
import SwiftyJSON
import Kingfisher
import Combine

//struct SiteView: View {
//    @StateObject var hiRequest = HiRequest()
//    var body: some View {
//        HStack(alignment: .center,spacing: 0) {
//            GeometryReader { geometry in
//                VStack(spacing: 0) {
//                    CollectionNavigatorView().listRowSeparator(.hidden).listRowInsets(EdgeInsets())
//                    List(hiRequest.hiKakaJSON.openList, id: \.id) { item in
//                        Text(item.areaName ?? "").foregroundColor(Color.white).font(.system(size: 14, weight: .thin, design: .serif)).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
////                        HiSiteServiceView(respModel: item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
//                    }.listStyle(PlainListStyle.init())
//                }.frame(width: geometry.size.width).background(.green).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//            }
//        }.onAppear {
//            hiRequest.fetchSiteDatas{ resp in
//            };
//        }
//    }
//}
//
//struct HiSiteServiceView: View {
//    @ObservedObject var respModel: HiSiteKakaJSONOpenList
//    @State private var isRotating = false
//    var body: some View {
//        VStack(){
//            ZStack() {
//                ZStack() {
//                    VStack(){
//                    }.frame(width: 42,height:42)
//                        .background(Color.pink)
//                        .cornerRadius(21)
//                    Image("hi_highlight").resizable().frame(width: 62, height: 62).rotationEffect(.degrees(isRotating ? 360 : 0))
//                        .animation(
//                            .linear(duration: 2.0)
//                            .repeatForever(autoreverses: false),
//                            value: isRotating
//                        )
//                        .onAppear { isRotating = true }
//                }
//                Image("hi_highlight_arrow").resizable().frame(width: 62, height: 62)
//            }
//            Spacer()
//            Text(respModel.areaName ?? "").foregroundColor(Color.white).font(.system(size: 14, weight: .thin, design: .serif))
//        }.frame(width: (HiSCREENWIDTH-62)/4)
//    }
//}


//struct SiteView: View {
//    @StateObject var hiRequest = HiRequest()
//    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4))];
//    var body: some View {
//        HStack(alignment: .center,spacing: 0) {
//            GeometryReader { geometry in
//                VStack(spacing: 0) {
//                    CollectionNavigatorView().listRowSeparator(.hidden).listRowInsets(EdgeInsets())
//                    List() {
//                        VStack(){
//                            LazyVGrid(columns: cols, spacing: 16) {
//                                 ForEach((0..<hiRequest.hiKakaJSON.openList.count), id: \.self) {index in
//                                     HiSiteServiceView(respModel:hiRequest.hiKakaJSON.openList[index])
//                                 }
//                            }
//                        }.frame(width: HiSCREENWIDTH-32).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
//                    }.listStyle(PlainListStyle.init())
//                    
//                    if let options:[HiListAppModuleRespModelHomePage] = hiRequest.settingModel?.homePage {
//                        List(options, id: \.key) { item in
//                            
//                        }.listStyle(PlainListStyle.init())
//                    }
//                }.frame(width: geometry.size.width).background(.green).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//            }
//        }.onAppear {
//            hiRequest.fetchSiteDatas{ resp in
//            };
//        }
//    }
//}
//
//struct HiSiteServiceView: View {
//    @ObservedObject var respModel: HiSiteKakaJSONOpenList
//    @State private var isRotating = false
//    var body: some View {
//        VStack(){
//            ZStack() {
//                ZStack() {
//                    VStack(){
//                    }.frame(width: 42,height:42)
//                        .background(Color.pink)
//                        .cornerRadius(21)
//                    Image("hi_highlight").resizable().frame(width: 62, height: 62).rotationEffect(.degrees(isRotating ? 360 : 0))
//                        .animation(
//                            .linear(duration: 2.0)
//                            .repeatForever(autoreverses: false),
//                            value: isRotating
//                        )
//                        .onAppear { isRotating = true }
//                }
//                Image("hi_highlight_arrow").resizable().frame(width: 62, height: 62)
//            }
//            Spacer()
//            Text(respModel.areaName ?? "").foregroundColor(Color.white).font(.system(size: 14, weight: .thin, design: .serif))
//        }.frame(width: (HiSCREENWIDTH-62)/4)
//    }
//}



struct SiteView: View {
    @StateObject var hiRequest = HiRequest()
    @State private var isLoading = false
    var body: some View {
        HStack(alignment: .center,spacing: 0) {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    CollectionNavigatorView().listRowSeparator(.hidden).listRowInsets(EdgeInsets())
                    List() {
                        HiSiteServiceView(respModel:$hiRequest.hiKakaJSON.openList).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                    }.listStyle(PlainListStyle.init()).refreshable {
                        await loadData()
                    }
                    
                    if let options:[HiListAppModuleRespModelHomePage] = hiRequest.settingModel?.homePage {
                        List(options, id: \.key) { item in
                            
                        }.listStyle(PlainListStyle.init())
                    }
                }.frame(width: geometry.size.width).background(.green).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }.onAppear {
            hiRequest.fetchSiteDatas{ resp in
            };
        }
    }
    func loadData() async {
        isLoading = true
        hiRequest.fetchSiteDatas{ resp in
            isLoading = false
        };
    }
}



struct HiSiteServiceView: View {
    @Binding var respModel: [HiSiteKakaJSONOpenList]
    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4))];
    
    @State private var isRotating = false
    
    var body: some View {
        VStack(){
            LazyVGrid(columns: cols, spacing: 16) {
                 ForEach((0..<respModel.count), id: \.self) {index in
                     VStack(){
                         ZStack() {
                             ZStack() {
                                 VStack(){
                                 }.frame(width: 42,height:42)
                                     .background(Color.pink)
                                     .cornerRadius(21)
                                 Image("hi_highlight").resizable().frame(width: 62, height: 62).rotationEffect(.degrees(isRotating ? 360 : 0))
                                     .animation(
                                         .linear(duration: 2.0)
                                         .repeatForever(autoreverses: false),
                                         value: isRotating
                                     )
                                     .onAppear { isRotating = true }
                             }
                             Image("hi_highlight_arrow").resizable().frame(width: 62, height: 62)
                         }
                         Spacer()
                         Text(respModel[index].areaName ?? "").foregroundColor(Color.white).font(.system(size: 14, weight: .thin, design: .serif))
                     }.frame(width: (HiSCREENWIDTH-62)/4)
                 }
            }
        }.frame(width: HiSCREENWIDTH-32)
    }
}

