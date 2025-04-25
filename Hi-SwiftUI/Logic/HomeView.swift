//
//  HomeView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/24.
//

import SwiftUI
import SwiftyJSON
import Kingfisher

struct HomeView: View {
    @StateObject var hiRequest = HiRequest()
    var body: some View {
        HStack(alignment: .center,spacing: 0) {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    CollectionNavigatorView().listRowSeparator(.hidden).listRowInsets(EdgeInsets())
                    if let options:[HiListAppModuleRespModelHomePage] = hiRequest.settingModel?.homePage {
                        List(options, id: \.key) { item in
                            if (item.key == "voucher") {
                                HiCollectionVoucherView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0)).listRowBackground(Color.clear)
                            } else if (item.key == "yibao_wallet" || item.key == "notice_activity_top_2" || item.key == "notice_activity_top_1") {
                                HiCollectionWalletView(respModel:item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "home_common_search_1") {
                                HiCollectionSearchOneView(respModel: item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "home_common_search_2") {
                                HiCollectionSearchTwoView(respModel: item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "hot_service") {
                                HiCollectionHotServiceView(respModel: item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "notice_activity_top_2") {
                                HiCollectionSearchTwoView(respModel: item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "organization") {
                                HiCollectionOrganizationView(respModel: item).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "tax") {
                                TaxView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                            } else if (item.key == "si_news") {
                                if let respModel:HiTopListRespModel = hiRequest.topListModel {
                                    HiCollectionSiNewsView(moduleModel:item,respModel:respModel).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16)).listRowBackground(Color.clear)
                                }
                            }
                        }.listStyle(PlainListStyle.init())
                    } else {
                        Spacer()
                    }
                }.frame(width: geometry.size.width).background(.green).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }.onAppear {
            hiRequest.fetchHomeDatas { resp in
            };
            hiRequest.fetchHSATopList { resp in
            };
        }
    }
}

struct HiCollectionSiNewsItemView: View {
    @ObservedObject var itemModel: HiTopListRespModelList
    @State var bottomHidden: Bool = false;
    var body: some View {
        VStack(){
            HStack(){
                VStack(alignment: .leading){
                    Text(itemModel.title ?? "").foregroundColor(Color(hex:"#303133")).font(.system(size: 14, weight: .thin, design: .serif)).lineLimit(2).padding(.top, 16)
                    Spacer()
                    HStack(){
                        Text(itemModel.rlsDateStr ?? "").foregroundColor(Color.white).font(.system(size: 12, weight: .thin, design: .serif))
                        Spacer()
                        HStack(){
                            Text(itemModel.visitCount ?? "").foregroundColor(Color.white).font(.system(size: 12, weight: .thin, design: .serif))
                            Image("chs_login_securetext_show").resizable().frame(width: 16, height: 16)
                        }
                    }.padding(.bottom, 16)
                }.padding(.trailing, 10)
                Spacer()
                KFImage(URL(string:itemModel.picUrl ?? ""))
                    .resizable().frame(width: 103, height: 69).background(Color.white).cornerRadius(5)
            }
            Spacer()
            if (!bottomHidden) {
                HiDashedLine()
            }
        }.frame(width: HiSCREENWIDTH-32,height: 100)
    }
}

struct HiCollectionSiNewsView: View {
    @ObservedObject var moduleModel: HiListAppModuleRespModelHomePage
    @ObservedObject var respModel: HiTopListRespModel
    var cols: [GridItem] = [GridItem(.fixed(HiSCREENWIDTH-32))];
    var body: some View {
        VStack(){
            HStack(){
                Text(moduleModel.content ?? "").foregroundColor(Color(hex:"#303133")).font(.system(size: 18, weight: .bold, design: .serif))
                Spacer()
                HStack(spacing: 0){
                    Text("查看更多")
                        .foregroundColor(Color(hex:"#303133"))
                                        .font(.system(size: 14, weight: .thin, design: .serif))
                    Image("chs_see_more").resizable().frame(width: 12, height: 12)
                }.frame(height: 44)
            }.frame(height: 44)
            VStack(){
                LazyVGrid(columns: cols, spacing: 0) {
                    ForEach((0..<(respModel.list.count > 2 ? 2 :respModel.list.count)), id: \.self) {index in
                        HiCollectionSiNewsItemView(itemModel:respModel.list[index],bottomHidden: index == (respModel.list.count > 2 ? 2 :respModel.list.count) - 1)
                     }
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }.frame(width: HiSCREENWIDTH-32)
    }
}

struct HiCollectionOrganizationView: View {
    @ObservedObject var respModel: HiListAppModuleRespModelHomePage
    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-42)/2)),GridItem(.fixed((HiSCREENWIDTH-42)/2))];
    var body: some View {
        VStack(){
            HStack(){
                Text(respModel.content ?? "").foregroundColor(Color(hex:"#303133")).font(.system(size: 18, weight: .bold, design: .serif))
                Spacer()
                HStack(spacing: 0){
                    Text("查看更多")
                        .foregroundColor(Color(hex:"#303133"))
                                        .font(.system(size: 14, weight: .thin, design: .serif))
                    Image("chs_see_more").resizable().frame(width: 12, height: 12)
                }.frame(height: 44)
            }.frame(height: 44)
            VStack(){
                LazyVGrid(columns: cols, spacing: 10) {
                    ForEach((0..<(respModel.childs.count > 6 ? 6 :respModel.childs.count)), id: \.self) {index in
                         HStack(spacing: 12){
                             KFImage(URL(string:respModel.childs[index].item?.imgUrl ?? ""))
                                 .resizable().frame(width: 32, height: 32).cornerRadius(16).padding(.leading,12)
                             Text(respModel.childs[index].content ?? "")
                                 .foregroundColor(Color(hex:"#303133"))
                                 .font(.system(size: 14, weight: .thin, design: .serif)).padding(.trailing,12)
                             Spacer()
                         }.frame(width: (HiSCREENWIDTH-42)/2,height:52)
                             .background(Color(hex:"#f6f8fb"))
                             .cornerRadius(5)
                     }
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }.frame(width: HiSCREENWIDTH-32)
    }
}

struct HiCollectionHotServiceView: View {
    @ObservedObject var respModel: HiListAppModuleRespModelHomePage
    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-42)/2)),GridItem(.fixed((HiSCREENWIDTH-42)/2))];
    var body: some View {
        VStack(){
            HStack(){
                Text(respModel.content ?? "").foregroundColor(Color(hex:"#303133")).font(.system(size: 18, weight: .bold, design: .serif))
                Spacer()
            }.frame(height: 44)
            VStack(){
                LazyVGrid(columns: cols, spacing: 10) {
                     ForEach((0..<respModel.childs.count), id: \.self) {index in
                         VStack(){}.frame(width: (HiSCREENWIDTH-42)/2,height:68)
                             .background(Color.pink)
                             .cornerRadius(5)
                     }
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }.frame(width: HiSCREENWIDTH-32)
    }
}


struct HiCollectionSearchTwoView: View {
    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4))];
    @ObservedObject var respModel: HiListAppModuleRespModelHomePage
    var body: some View {
        VStack(){
            VStack(){
                LazyVGrid(columns: cols, spacing: 10) {
                    ForEach((0..<respModel.childs.count), id: \.self) {index in
                         VStack(){}.frame(width: (HiSCREENWIDTH-62)/4,height:80)
                             .background(Color.purple)
                             .cornerRadius(5)
                     }
                }
            }
        }.frame(width: HiSCREENWIDTH-32)
    }
}

struct HiCollectionSearchOneView: View {
    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-52)/3)),GridItem(.fixed((HiSCREENWIDTH-52)/3)),GridItem(.fixed((HiSCREENWIDTH-52)/3))];
    @ObservedObject var respModel: HiListAppModuleRespModelHomePage
    var body: some View {
        VStack(){
            VStack(){
                LazyVGrid(columns: cols, spacing: 10) {
                     ForEach((0..<respModel.childs.count), id: \.self) {index in
                         VStack(){}.frame(width: (HiSCREENWIDTH-52)/3,height:80)
                             .background(Color.yellow)
                             .cornerRadius(5)
                     }
                }
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }.frame(width: HiSCREENWIDTH-32)
    }
}

struct HiCollectionWalletView: View {
    @ObservedObject var respModel: HiListAppModuleRespModelHomePage
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var index = 0
    var body: some View {
        VStack {
            TabView(selection: $index) {
                ForEach (0..<(respModel.childs.count)) { i in
                    KFImage(URL(string:respModel.childs[i].imgUrl ?? (respModel.childs[i].item?.imgUrl ?? "")))
                        .resizable().frame(width: HiSCREENWIDTH-32,height: 88).background(Color.white)
                }
            }
            .frame(width: HiSCREENWIDTH-32,height: 88).background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white) // 设置背景色为白色
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
            )
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .automatic))
            .onReceive(timer) { _ in
                withAnimation {
                    index = index < 5 ? index + 1 : 0
                }
            }
        }
    }
}

struct HiCollectionVoucherView: View {
    var cols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-72)/3)),GridItem(.fixed((HiSCREENWIDTH-72)/3)),GridItem(.fixed((HiSCREENWIDTH-72)/3))];
    var body: some View {
        VStack(){
            VStack(){
                ZStack(){
                    VStack(){}.frame(width: HiSCREENWIDTH-32,height: 128).background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.white) // 设置背景色为白色
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
                    )
                    Text("S w i f t U I 测试").foregroundColor(Color(hex:"#303133")).font(.system(size: 18, weight: .bold, design: .serif))
                }
                LazyVGrid(columns: cols, spacing: 10) {
                     ForEach((0..<3), id: \.self) {index in
                         VStack(){}.frame(width: (HiSCREENWIDTH-72)/3,height:88)
                             .background(Color.red)
                             .cornerRadius(5)
                     }
                }.padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
            }.padding(EdgeInsets(top: 16, leading: 10, bottom: 0, trailing: 10))
        }.frame(width: HiSCREENWIDTH)
    }
}

struct CollectionNavigatorView: View {
    var body: some View {
        HStack{
            Image("chs_logo_hsa")
                .resizable().frame(width: 55,
                                   height: 18,
                                   alignment: .center).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Text("国家医保服务平台").foregroundColor(Color.white).font(.system(size: 14, weight: .bold, design: .serif))
            Spacer()
            Image("logo_bell")
                .resizable().frame(width: 20,
                                   height: 20,
                                   alignment: .center).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:16))
        }.frame(height: 44)
    }
}
