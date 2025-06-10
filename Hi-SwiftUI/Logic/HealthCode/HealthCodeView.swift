//
//  HealthCodeView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/28.
//

import SwiftUI

struct HealthCodeView: View {
    @EnvironmentObject var pathManager:PathManager
    var body: some View {
        VStack(spacing: 0){
            HiHealthNavigtorCodeView()
            List{
                HiHealthCodeCertView(clickHandle: { number in
                    print("clickHandle-HiHealthCodeCertView");
                    pathManager.path.append(Target.popUpView)
                }).listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
                HiHealthCodeShowView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                HiHealthPhoneActiveView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                HiHealthErrorView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                HiHealthFunctionCodeView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
                HiHealthHoritzalCodeView().listRowSeparator(.hidden).listRowInsets(EdgeInsets(top: 12, leading: 16, bottom: 0, trailing: 16))
            }.listStyle(PlainListStyle.init())
        }.navigationBarBackButtonHidden()
    }
}

struct HiHealthErrorView: View {
    var body: some View {
        VStack(){
            HStack() {
                Spacer()
                Image("code_show_error").resizable().frame(width: 148, height: 148).padding(EdgeInsets(top: 39, leading: 0, bottom: 0, trailing: 0))
                Spacer()
            }
            HStack() {
                Text("展码失败")
                    .foregroundColor(Color(hex:"#3B71E8")).font(.system(size: 14, weight: .thin, design: .serif))
            }.padding(EdgeInsets(top: 7, leading: 0, bottom: 0, trailing: 0))
            HStack() {
                Text("展码失败原因")
                    .foregroundColor(Color(hex:"#303133")).font(.system(size: 16, weight: .thin, design: .serif)).fontWeight(.bold).padding(.leading,16)
                Spacer()
                Text("查看更多>").padding(.trailing,16)
                    .foregroundColor(Color(hex:"#3B71E8")).font(.system(size: 14, weight: .thin, design: .serif))
            }.padding(EdgeInsets(top: 39, leading: 0, bottom: 0, trailing: 0))
            HStack() {
                VStack() {
                    Text("一候，桐始华。清明时节，桐花始盛开。二候，田鼠化为鴽（rú）。田鼠因烈阳之气渐盛而躲回洞穴，喜爱阳气的鴽鸟开始出来活动。田鼠化为鴽，意指阴气潜藏而阳气渐盛。三候，虹始见。虹为阴阳交会之气，则虹见。").frame(width: HiSCREENWIDTH-96)
                        .foregroundColor(Color(hex:"#303133")).font(.system(size: 14, weight: .thin, design: .serif)).multilineTextAlignment(TextAlignment.leading)
                    Text("一候，桐始华。").frame(width: HiSCREENWIDTH-96,alignment: .leading)
                        .foregroundColor(Color(hex:"#303133")).font(.system(size: 14, weight: .thin, design: .serif))
                }.frame(width: HiSCREENWIDTH-64).padding(.vertical,16).background(Color(hex:"#F5F7FA")).cornerRadius(8)
            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 34, trailing: 0))
        }.frame(width: HiSCREENWIDTH-32).background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white) // 设置背景色为白色
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
        )
    }
}

struct HiHealthPhoneActiveView: View {
    var body: some View {
        VStack(){
            VStack(alignment: HorizontalAlignment.center) {
                Text("请设置预留手机号，\n后续可前往我的账户信息界面进行修改！")
                    .font(.system(size: 12, weight: .thin, design: .serif))
                    .foregroundColor(Color(hex:"#E6A23C")).multilineTextAlignment(.center)
            }.frame(width: HiSCREENWIDTH-32, height: 40).background(Color(hex:"#FFF7ED")).padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            HStack() {
            }.frame(width: HiSCREENWIDTH-68, height: 36).background(
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color(hex:"#F5F7FA")) // 设置背景色为白色
            ).padding(EdgeInsets(top: 26, leading: 0, bottom: 8, trailing: 0))
            ZStack(alignment: Alignment.trailing){
                HStack() {
                }.frame(width: HiSCREENWIDTH-68, height: 36).background(
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color(hex:"#F5F7FA")) // 设置背景色为白色
                )
                HStack() {
                    Button(action: {
                        // 按钮操作
                    }, label: {
                        Text("获取验证码")
                            .foregroundColor(Color(hex:"#3B71E8")).font(.system(size: 14, weight: .thin, design: .serif))
                    })
                }.offset(x:-16,y:0)
            }
            HStack() {
                Button(action: {
                    // 按钮操作
                }, label: {
                    Text("领取医保码（医保电子凭证）")
                            .foregroundColor(.white).font(.system(size: 16, weight: .thin, design: .serif))
                            
                }).frame(width: HiSCREENWIDTH-68, height: 44).background(RoundedRectangle(cornerRadius: 22)
                    .fill(Color(hex:"#3B71E8"))
            )
            }.padding(EdgeInsets(top: 26, leading: 0, bottom: 34, trailing: 0))
        }.frame(width: HiSCREENWIDTH-32).background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white) // 设置背景色为白色
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
        )
    }
}


struct HiHealthCodeCertView: View {
    var clickHandle:((_ number:Int)->Void)?
    var body: some View {
        ZStack(alignment: Alignment(horizontal: HorizontalAlignment.trailing, vertical: .bottom)) {
            ZStack(alignment: Alignment(horizontal: HorizontalAlignment.center, vertical: .bottom)) {
                ZStack(alignment: Alignment(horizontal: HorizontalAlignment.center, vertical: .top)) {
                    Image("hsa_qrcode_bg_card").resizable().frame(height: 204)
                    VStack(spacing: 0){
                        HStack(alignment: VerticalAlignment.center){
                            Image("hsa_qrcode_logo")
                                .resizable().frame(width: 34,
                                                   height: 34,
                                                   alignment: .center)
                            Text("医保电子凭证")
                                .font(.system(size: 22, weight: .bold, design: .serif))
                                .foregroundColor(Color.white)
                            Spacer()
                        }.padding(EdgeInsets(top: 24, leading: 16, bottom: 0, trailing: 0))
                        HStack(alignment: VerticalAlignment.center){
                            Text("姓       名")
                                .font(.system(size: 10, weight: .thin, design: .serif))
                                .foregroundColor(Color.white)
                            Text("国医保")
                                .font(.system(size: 15, weight: .bold, design: .serif))
                                .foregroundColor(Color.white)
                            Spacer()
                        }.padding(EdgeInsets(top: 32, leading: 16, bottom: 0, trailing: 0))
                        HStack(alignment: VerticalAlignment.center){
                            Text("身份证号")
                                .font(.system(size: 10, weight: .thin, design: .serif))
                                .foregroundColor(Color.white)
                            Text("110102201805316666")
                                .font(.system(size: 15, weight: .bold, design: .serif))
                                .foregroundColor(Color.white)
                            Spacer()
                        }.padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                        Spacer()
                    }.frame(width: HiSCREENWIDTH-32, height: 180).offset(x:0,y:0)
                }.frame(width: HiSCREENWIDTH)
                Text("国家医疗保障局监制")
                    .font(.system(size: 10, weight: .thin, design: .serif))
                    .foregroundColor(Color.white).offset(y:-36)
            }
            Image("hsa_qrcode_code").resizable().frame(width: 24, height: 24).offset(x:-32,y:-36)
        }.frame(width: HiSCREENWIDTH).onTapGesture {
            guard let logicHandle = self.clickHandle else { return }
            logicHandle(0);
        }
    }
}

struct HiHealthCodeShowView: View {
    var body: some View {
        VStack(){
            VStack() {
            }.frame(width: 296, height: 66).background(Color.red).padding(EdgeInsets(top: 32, leading: 0, bottom: 16, trailing: 0))
            VStack() {
            }.frame(width: 120, height: 120).background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.green) // 设置背景色为白色
            )
            HStack(alignment: VerticalAlignment.center){
                Image("hsa_qrcode_refresh").resizable().frame(width: 16, height: 16)
                Text("每隔1分钟自动")
                    .font(.system(size: 14, weight: .thin, design: .serif))
                    .foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 0))
                Text("刷新")
                    .font(.system(size: 14, weight: .thin, design: .serif))
                    .foregroundColor(Color.blue).padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 0))
            }.padding(EdgeInsets(top: 16, leading: 0, bottom: 32, trailing: 0))
            VStack(alignment: HorizontalAlignment.leading,spacing: 0){
                HStack(alignment: VerticalAlignment.top){
                }.frame(width: HiSCREENWIDTH - 32,height: 1).background(Color.red)
                HStack(alignment: VerticalAlignment.center){
                    Text("参保地")
                        .font(.system(size: 16, weight: .thin, design: .serif))
                        .foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                    Spacer()
                    HStack(alignment: VerticalAlignment.center){
                        Text("北京市")
                            .font(.system(size: 16, weight: .thin, design: .serif))
                            .foregroundColor(Color.black).padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 0))
                        Image("logo_go").resizable().frame(width: 16, height: 16)
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                }.frame(width: HiSCREENWIDTH - 32,height: 49)
            }.frame(width: HiSCREENWIDTH - 32,height: 50)
        }.frame(width: HiSCREENWIDTH-32).background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white) // 设置背景色为白色
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
        )
    }
}

struct HiHealthFunctionCodeView: View {
    // fixed: 固定Item大小，根据数组数量，显示每行个数
    var columns: [GridItem] = [GridItem(.fixed((HiSCREENWIDTH-72)/3)),GridItem(.fixed((HiSCREENWIDTH-72)/3)),GridItem(.fixed((HiSCREENWIDTH-72)/3))]
    var body: some View {
        VStack(){
            VStack(){
                LazyVGrid(columns: columns, spacing: 10) {
                     ForEach((0..<7), id: \.self) {index in
                         VStack(){}.frame(width: (HiSCREENWIDTH-72)/3,height:88)
                             .background(Color.red)
                             .cornerRadius(5)
                     }
                 }
            }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }.frame(width: HiSCREENWIDTH-32).background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white) // 设置背景色为白色
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
        )
    }
}

struct HiHealthHoritzalCodeView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<5) { index in
                    VStack(){}.frame(width: 200, height: 100).background(Color.green)
                        .cornerRadius(5)
                }
            }
        }
    }
}

struct HiHealthNavigtorCodeView: View {
    @EnvironmentObject var pathManager:PathManager
    @Environment(\.dismiss) var dismiss
    var body: some View {
        HStack() {
            HStack{
                Image("hsa_back")
                    .resizable().frame(width: 16,
                                       height: 16,
                                       alignment: .center)
                Text("返回")
                    .font(.system(size: 16, weight: .medium, design: .serif))
                    .foregroundColor(Color.white)
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0)).onTapGesture {
                print("path.count");
                pathManager.path.removeLast() // 返回根视图
            }
            Spacer()
        }.frame(width: HiSCREENWIDTH).frame(height: HiNavigationBarH).background(Color.pink)
    }
}

#Preview {
    HealthCodeView()
}
