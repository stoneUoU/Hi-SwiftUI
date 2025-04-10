//
//  CardView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/24.
//

import SwiftUI

struct CardItemView: View {
    @Binding var backgroundColor: Color
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            HStack(alignment: .top,spacing: 0) {
                VStack(alignment: .leading,spacing: 0) {
                    Text("国家医疗保障局监制")
                        .font(.system(size: 18, weight: .bold, design: .serif))
                        .foregroundColor(Color.white).padding(EdgeInsets(top:12, leading: 0, bottom: 8, trailing: 0))
                    Text("劳动者进行失业登记，并需要填写《失业人员登记 表》，由本人书面承诺填写信息的真实性，不交其 他材料，由本人书面承诺填写信息的真实性，不交其")
                        .font(.system(size: 14, weight: .bold, design: .serif))
                        .foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                }
                Spacer()
            }.padding(EdgeInsets(top:0, leading: 16, bottom: 0, trailing: 0))
            HStack(spacing: 0) {
                ForEach(0 ..< 3) {_ in
                    VStack(alignment: .center, spacing: 0) {
                        Image("elec_func_00")
                        .resizable()
                        .frame(width: 36,
                               height: 36,
                               alignment: .center).padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                        Text("SwiftUI")
                            .font(.system(size: 14, weight: .thin, design: .serif))
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
                    }.frame(width: (HiSCREENWIDTH - 32)/3, height: 108)
                }
            }
        }.frame(width: HiSCREENWIDTH - 32).background(
            RoundedRectangle(cornerRadius: 8)
                .fill(backgroundColor) // 设置背景色为白色
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
        )
    }
}

struct ApplyView: View {
    @State var itemColors = [Color.red,Color.yellow,Color.green];
    var body: some View {
        HStack(alignment: .center,spacing: 0) {
            HStack(alignment: .top,spacing: 0) {
                VStack(alignment: .leading,spacing: 0) {
                    Text("失业保险金申领")
                        .font(.system(size: 18, weight: .bold, design: .serif))
                        .foregroundColor(Color.white)
                    Text("失业保险金按月发放，经办机构开具单证，失业人员凭单证到指定银行领取。")
                        .font(.system(size: 14, weight: .bold, design: .serif))
                        .foregroundColor(Color.white).multilineTextAlignment(.leading)
                    HStack() {
                        HStack(alignment: .center,spacing: 4) {
                            Text("立即申领")
                                .font(.system(size: 12, weight: .bold, design: .serif))
                                .foregroundColor(Color.white)
                            Image("elec_select_right")
                                .resizable().frame(width: 8,
                                                   height: 5,
                                                   alignment: .center)
                        }.frame(width: 70,height: 24).background(
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color(hex:"#4077F4")) // 设置背景色为白色
                                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
                        )
                        HStack(alignment: .center,spacing: 4) {
                            Text("进度查询")
                                .font(.system(size: 12, weight: .bold, design: .serif))
                                .foregroundColor(Color.white)
                            Image("elec_select_right")
                                .resizable().frame(width: 8,
                                                   height: 5,
                                                   alignment: .center)
                        }.frame(width: 70,height: 24).background(
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color(hex:"#FF911A")) // 设置背景色为白色
                                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
                        )
                    }.padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 0))
                }
            }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 6))
            HStack(alignment: .center,spacing: 0) {
                HStack{}.frame(width: 96,height: 68).background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.white) // 设置背景色为白色
                        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5) // 添加阴影效果
                )
            }.padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 16))
        }.frame(width: HiSCREENWIDTH - 32).background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.yellow) // 设置背景色为白色
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // 添加阴影效果
        )
    }
}

struct CardView: View {
    @State var itemColors = [Color.red,Color.green,Color.green];
    var body: some View {
        
        VStack(alignment: .leading,spacing: 0){
            ForEach(0 ..< itemColors.count) {index in
                if (index == 2) {
                    ApplyView()
                } else {
                    CardItemView(backgroundColor: $itemColors[index]).padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                }
            }
        }.onAppear {
        }
//        VStack(alignment: .leading,spacing: 0){
//            ZStack{
//                RoundedRectangle(cornerRadius: 8)
//                    .frame(width: HiSCREENWIDTH - 32,height: 210)
//                    .foregroundColor(Color.green)
//                VStack(alignment: .leading,spacing: 0) {
//                    HStack(alignment: .top,spacing: 0) {
//                        VStack(alignment: .leading,spacing: 0) {
//                            Text("国家医疗保障局监制")
//                                .font(.system(size: 18, weight: .bold, design: .serif))
//                                .foregroundColor(Color.white).padding(EdgeInsets(top:12, leading: 0, bottom: 8, trailing: 0))
//                            Text("劳动者进行失业登记，并需要填写《失业人员登记 表》，由本人书面承诺填写信息的真实性，不交其 他材料。")
//                                .font(.system(size: 14, weight: .bold, design: .serif))
//                                .foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16)).multilineTextAlignment(.leading)
//                        }
//                        Spacer()
//                    }.padding(EdgeInsets(top:0, leading: 16, bottom: 0, trailing: 0))
//                    Spacer()
//                    GeometryReader { geometry in
//                        HStack(spacing: 0) {
//                            ForEach(0 ..< 3) {_ in
//                                VStack(alignment: .center, spacing: 0) {
//                                    Image("elec_func_00")
//                                    .resizable()
//                                    .frame(width: 36,
//                                           height: 36,
//                                           alignment: .center).padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
//                                    Spacer()
//                                    Text("SwiftUI")
//                                        .font(.system(size: 14, weight: .thin, design: .serif))
//                                    .foregroundColor(Color.white)
//                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
//                                }
//                            }.frame(width: geometry.size.width/3, height: 108)
//                        }
//                    }.frame(width: HiSCREENWIDTH - 32,height: 108)
//                }.frame(width: HiSCREENWIDTH - 32,height: 210)
//            }
//        }.onAppear {
//        }
    }
}
