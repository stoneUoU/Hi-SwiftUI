//
//  HrssHomeView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/6/10.
//

import SwiftUI
import SwiftyJSON
import Kingfisher

struct HrssHomeView: View {
    @StateObject var hiRequest = HiRequest()
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var pathManager: PathManager
    let items = ["苹果"]
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: Alignment(horizontal: HorizontalAlignment.leading, vertical: .top)) {
                List(items, id: \.self) { _ in
                    HrssCarouselView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)).listRowBackground(Color.clear)
                    HrssNoticeView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16)).listRowBackground(Color.clear)
                    HrssTopicView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16)).listRowBackground(Color.clear)
                    HrssEasyManView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16)).listRowBackground(Color.clear)
                    HrssAllDoView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16)).listRowBackground(Color.clear)
                }.frame(width: geometry.size.width,height: geometry.size.height).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)).edgesIgnoringSafeArea(.top).listStyle(PlainListStyle()).background(Color(hex: "#F5F7FA"));
                HrssNavigatorView(presentMode: _presentationMode).listRowSeparator(.hidden).listRowInsets(EdgeInsets())
            }
        }
    }
}

struct HrssCarouselView: View {
    
    var carousels:[HrssModel] = [HrssModel.init(json:JSON(["iconUrl":"ic_home_carousel_bg_000","title":"扫一扫"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_carousel_bg_001","title":"电子社保卡"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_carousel_bg_002","title":"12333"]))];
    
    var models:[HrssModel] = [HrssModel.init(json:JSON(["iconUrl":"ic_home_scaning","title":"扫一扫"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_sdking","title":"电子社保卡"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_teling","title":"12333"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_msg_center","title":"消息中心"]))];
    var modelCols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4))];
    
    var funcModels:[HrssModel] = [HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"扫一扫"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"电子社保卡"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"人社机构"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"消息中心"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"扫一扫"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"电子社保卡"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_rs_origation","title":"人社机构"])),HrssModel.init(json:JSON(["iconUrl":"ic_home_more_service","title":"更多服务"]))];
//    var funcModelCols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4)),GridItem(.fixed((HiSCREENWIDTH-62)/4))];
    @State private var index = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var body: some View {
            ZStack() {
                VStack{
                    TabView(selection: $index) {
                        ForEach (0..<carousels.count) { index in
                            Image(carousels[index].iconUrl).resizable().frame(width: HiSCREENWIDTH,
                                                                   height: HiStatusBarAndNavigationBarH+287,
                                                                              alignment: .center).edgesIgnoringSafeArea(.top).padding(.top,0).background(Color(hex: "#F5F7FA"))
                        }
                    }.edgesIgnoringSafeArea(.top)
                    .frame(width: HiSCREENWIDTH,height: HiStatusBarAndNavigationBarH+287).background(
                    ).padding(.top,0)
                    .onReceive(timer) { _ in
                        withAnimation {
                            index = index < 3 ? index + 1 : 0
                        }
                    }.background(Color(hex: "#F5F7FA"))
                    Spacer()
                }
                VStack {
                    VStack(){
                        LazyVGrid(columns: modelCols, spacing: 10) {
                            ForEach((0..<models.count), id: \.self) {index in
                                 VStack(){
                                     Image(models[index].iconUrl).resizable().frame(width: 44,
                                                                            height: 44,
                                                                            alignment: .center).padding(.top,0)
                                     Text(models[index].title).foregroundColor(Color.white).font(.system(size: 14, weight: .bold, design: .serif)).padding(.top,8)
                                 }.frame(width: (HiSCREENWIDTH-62)/4,height:90)
                                     .cornerRadius(5)
                             }
                        }
                    }.padding(EdgeInsets(top: HiStatusBarAndNavigationBarH+24, leading: 0, bottom: 0, trailing: 0))
                    Spacer()
                    VStack(){
                        LazyVGrid(columns: modelCols, spacing: 0) {
                            ForEach((0..<funcModels.count), id: \.self) {index in
                                 VStack(){
                                     Image(funcModels[index].iconUrl).resizable().frame(width: 36,
                                                                            height: 36,
                                                                            alignment: .center).padding(.top,12)
                                     Text(funcModels[index].title).foregroundColor(Color(hex: "#333333")).font(.system(size: 12, weight: .regular, design: .serif)).padding(.top,0)
                                 }
                             }
                        }
                    }.frame(width: HiSCREENWIDTH-32,height: 164).background(Color.white).cornerRadius(8.0)
                }.frame(width:HiSCREENWIDTH,height: HiStatusBarAndNavigationBarH+354).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
    }
}

struct HrssNoticeView: View {
    var body: some View {
        VStack(){
           
        }.frame(width: HiSCREENWIDTH-32,height: 70).background(Color.white).cornerRadius(8.0)
    }
}

struct HrssTopicView: View {
    var body: some View {
        VStack(){
           
        }.frame(width: HiSCREENWIDTH-32,height: 198).background(Color.white).cornerRadius(8.0)
    }
}

struct HrssEasyManView: View {
    var models:[HrssModel] = [HrssModel.init(json:JSON(["iconUrl":"ic_easy_left","title":"扫一扫","bgUrl":"ic_easy_01"])),HrssModel.init(json:JSON(["iconUrl":"ic_easy_middle","title":"电子社保卡","bgUrl":"ic_easy_02"])),HrssModel.init(json:JSON(["iconUrl":"ic_easy_right","title":"12333","bgUrl":"ic_easy_03"]))];
    var modelCols: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-80)/3)),GridItem(.fixed((HiSCREENWIDTH-80)/3)),GridItem(.fixed((HiSCREENWIDTH-80)/3))];
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading){
            HStack(){
                Text("便民服务").foregroundColor(Color(hex: "#333")).font(.system(size: 18, weight: .bold, design: .serif)).padding(EdgeInsets.init(top: 16, leading: 16, bottom: 0, trailing: 0))
                Spacer()
            }
            Spacer()
            VStack(){
                LazyVGrid(columns: modelCols, spacing: 12) {
                    ForEach((0..<models.count), id: \.self) {index in
                        ZStack{
                            Image(models[index].bgUrl).resizable().frame(width: (HiSCREENWIDTH-80)/3,height: 130,
                                                                   alignment: .center)
                            VStack(){
                                Image(models[index].iconUrl).resizable().frame(width: 36,
                                                                       height: 36,
                                                                       alignment: .center).padding(.top,16)
                                Text(models[index].title).foregroundColor(Color(hex: "#333333")).font(.system(size: 14, weight: .bold, design: .serif)).padding(.top,2)
                                Text("记录一生 保障一生").foregroundColor(Color(hex: "#B5B5B5")).font(.system(size: 10, weight: .regular, design: .serif)).padding(.top,2)
                                HStack(){
                                    Text("去看看").foregroundColor(Color(hex: "#4077F4")).font(.system(size: 12, weight: .regular, design: .serif))
                                    Image("ic_topic_go").resizable().frame(width: 5,
                                                                           height: 8,
                                                                           alignment: .center)
                                }.padding(.top,2)
                                Spacer()
                            }.frame(width: (HiSCREENWIDTH-80)/3,height: 130)
                        }
                     }
                }
            }.frame(width: HiSCREENWIDTH-32,height: 130).background(Color.white)
        }.frame(width: HiSCREENWIDTH-32,height: 182).background(Color.white).cornerRadius(8.0)
    }
}

struct HrssAllDoView: View {
    var body: some View {
        VStack(){
           
        }.frame(width: HiSCREENWIDTH-32,height: 197).background(Color.white).cornerRadius(8.0)
    }
}


struct HrssNavigatorView: View {
    @Environment(\.presentationMode) var presentMode
    var body: some View {
        HStack{
            Text("厦门市").foregroundColor(Color.white).font(.system(size: 15, weight: .bold, design: .serif))
            ZStack(alignment: Alignment(horizontal: HorizontalAlignment.leading, vertical: .center)) {
                HStack{}.frame(maxWidth: .infinity,maxHeight: 28).background(Color.white).cornerRadius(4).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:0))
                HStack{
                    Image("icon_sousuo").resizable().frame(width: 12,
                                                           height: 12,
                                                           alignment: .center).padding(.leading,16)
                    Text("电子社保卡上线啦！").foregroundColor(Color(hex:"#999999")).font(.system(size: 12, weight: .regular, design: .serif)).padding(.leading,4)
                }
            }
            Image("ic_home_header_message").resizable().frame(width: 20,
                                   height: 20,
                                   alignment: .center).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:0)).onTapGesture {self.presentMode.wrappedValue.dismiss()}
        }.frame(height: HiNavigationBarH).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing:16))
    }
}
