//
//  CardView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/24.
//

import SwiftUI

struct PopUpView: View {
    @State private var showAlert = false
    var body: some View {
//        HSAPopUpView(showAlert: $showAlert)
        Button("点击弹窗") {
            showAlert.toggle()
        }
//        .sheet(isPresented: $showAlert) {
//            PopUpCenterView(showAlert: $showAlert).padding(.vertical, 50) // 根据需要调整垂直位置，使之居中显示
//                }
        .fullScreenCover(isPresented: $showAlert) {
            ZStack {
                Color.black.opacity(0.5) // 背景半透明遮罩层
//                PopUpCenterView(showAlert: $showAlert).padding(.vertical, 50) // 根据需要调整垂直位置，使之居中显示
                HSAPopUpView(showAlert: $showAlert)
            }
        }.onAppear {
            showAlert.toggle();
        }
    }
}

struct HSAPopUpView: View {
    @Binding var showAlert: Bool
    var body: some View {
        ZStack(alignment: Alignment.bottom){
            Image("hsa_popup_example")
            .resizable()
            .frame(width: HiSCREENWIDTH - 108,
                   height: 357,
                   alignment: .center)
            
            Image("hsa_popup_close")
                .resizable().onTapGesture {
                    showAlert = false;
                }
            .frame(width: 34,
                   height: 34,
                   alignment: .center).offset(x:0,y:24+34)
        }
    }
}

struct PopUpCenterView: View {
    @Binding var showAlert: Bool
    var body: some View {
        ZStack(alignment: Alignment.top){
            VStack(alignment: .leading,spacing: 0) {
                HStack(alignment: .center,spacing: 0) {
                    Spacer()
                    Text("温馨提示")
                        .font(.system(size: 18, weight: .bold, design: .serif))
                        .foregroundColor(Color(hex: "#303133"))
                    Spacer()
                }.padding(EdgeInsets(top:42, leading: 0, bottom: 12, trailing: 0))
                ZStack(alignment: Alignment.center){
                    HStack(spacing: 30) {
                        ForEach(0 ..< 2) {index in
                            VStack(alignment: .center, spacing: 0) {
                                Image("icon_gsyb_pop_business")
                                .resizable()
                                .frame(width: 36,
                                       height: 36,
                                       alignment: .center).padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                                Text(index == 0 ? "门慢门特登记":"医疗机构审核")
                                    .font(.system(size: 12, weight: .thin, design: .serif))
                                .foregroundColor(Color(hex: "#606266"))
                                .padding(EdgeInsets(top: 4, leading: 0, bottom: 8, trailing: 0))
                            }.frame(width: (HiSCREENWIDTH - 166)/2, height: 72).background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color(hex:"#F5F7FA")))
                        }
                    }.padding(EdgeInsets(top: 0, leading: 28, bottom: 0, trailing: 28))
                    Image("icon_gsyb_pop_go")
                    .resizable()
                    .frame(width: 13,
                           height: 12,
                           alignment: .center)
                }
                Text("您提交的业务已审核，请点击确定查看详情")
                    .font(.system(size: 14, weight: .thin, design: .serif))
                    .foregroundColor(Color(hex: "#606266")).padding(EdgeInsets(top: 12, leading: 28, bottom: 0, trailing: 28))
                HStack() {
                    Button(action: {
                        // 按钮操作
                        showAlert = false;
                    }, label: {
                        Text("取消")
                                .foregroundColor(Color(hex: "#606266")).font(.system(size: 16, weight: .thin, design: .serif))
                    }).frame(width: (HiSCREENWIDTH - 114)/2, height: 40).background(RoundedRectangle(cornerRadius: 6)
                        .fill(Color(hex:"#F5F7FA")))
                    Button(action: {
                        // 按钮操作
                        showAlert = false;
                    }, label: {
                        Text("确定")
                                .foregroundColor(.white).font(.system(size: 16, weight: .thin, design: .serif))
                    }).frame(width: (HiSCREENWIDTH - 114)/2, height: 40).background(RoundedRectangle(cornerRadius: 6)
                        .fill(Color(hex:"#3B71E8")))
                }.padding(EdgeInsets(top: 16, leading: 16, bottom: 34, trailing: 16))
            }.frame(width: HiSCREENWIDTH - 80).background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white) // 设置背景色为白色
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
            )
            Image("icon_gsyb_pop_bell")
            .resizable()
            .frame(width: 70,
                   height: 70,
                   alignment: .center).offset(x:0,y:-35)
        }
    }
}
