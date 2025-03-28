//
//  ElecCertView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/20.
//

import SwiftUI

struct ElecCertView: View {
    
    var body: some View {
        HStack(alignment: .center,spacing: 0) {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    HStack{
                        Image("logo_sxyb")
                            .resizable().frame(width: 163,
                                               height: 20,
                                               alignment: .center).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                        Spacer()
                        Image("logo_bell")
                            .resizable().frame(width: 20,
                                               height: 20,
                                               alignment: .center).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:16))
                    }.frame(height: 44)
                    ZStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                            .frame(width: UIScreen.main.bounds.width - 32, height: 164)
                                            .foregroundColor(.white).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            
                        }
                        VStack(spacing: 0) {
                            ZStack {
                                Image("elec_banner")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width - 36,
                                       height: 125,
                                       alignment: .center).padding(EdgeInsets(top: 2, leading: 2, bottom: 0, trailing: 2))
                                ZStack(alignment: Alignment(horizontal: HorizontalAlignment.trailing, vertical: .top)) {
                                    VStack {
                                        HStack{
                                            Image("elec_logo")
                                                .resizable().frame(width: 44,
                                                                   height: 44,
                                                                   alignment: .center).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                                            VStack(alignment: .leading,spacing: 6){
                                                Text("国家医疗保障局监制")
                                                    .font(.system(size: 12, weight: .thin, design: .serif))
                                                    .foregroundColor(Color.gray)
                                                HStack(alignment: .bottom, spacing: 6){
                                                    Text("医保码")
                                                        .font(.system(size: 24, weight: .bold, design: .serif))
                                                        .foregroundColor(Color.white)
                                                    Text("医保电子凭证")
                                                        .font(.system(size: 14, weight: .bold, design: .serif))
                                                        .foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                                }
                                            }
                                            Spacer()
                                        }.frame(width: UIScreen.main.bounds.width - 36,height: 60).padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
                                        Spacer()
                                        HStack(alignment: .top) {
                                            HStack(spacing: 6) {
                                                Text("张*三  350**********8666")
                                                    .font(.system(size: 16, weight: .medium))
                                                    .foregroundColor(Color.white)
                                                Image("elec_select_right")
                                                    .resizable().frame(width: 8,
                                                                       height: 5,
                                                                       alignment: .center)
                                            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                                            Spacer()
                                            ZStack {
                                                Image("elec_ins")
                                                Text("已参保")
                                                    .font(.system(size: 12, weight: .medium))
                                                    .foregroundColor(Color.white)
                                            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                                        }.frame(width: UIScreen.main.bounds.width - 36,height: 36)
                                    }.padding(EdgeInsets(top: 2, leading: 0, bottom: 0, trailing: 0))
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                                        .frame(width: 88,height: 24)
                                                        .foregroundColor(Color.clear).overlay(
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color.white)
                                                        )
                                        HStack{
                                            Text("厦门市")
                                                .font(.system(size: 14, weight: .thin, design: .serif))
                                                .foregroundColor(Color.white)
                                            Image("elec_select_down")
                                                .resizable().frame(width: 8,
                                                                   height: 5,
                                                                   alignment: .center)
                                        }
                                    }.padding(EdgeInsets(top: 34+16, leading: 0, bottom: 0, trailing: 16))
                                }
                            }
                            PersonalYueView()
                        }
                    }.frame(width: UIScreen.main.bounds.width - 32, height: 164).padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
                    FunctionsView()
                    TaxView()
//                    NoticeView()
                    SpecialView()
                    HorizontalView()
                    Spacer()
                }.frame(width: geometry.size.width).background(.green).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

struct TaxView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                            .frame(width: deviceWidth - 32,height: 90)
                            .foregroundColor(Color(hex:"#F2F6FE"))
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 8)
//                                    .stroke(Color.red))
            VStack() {
                HStack() {
                    ZStack{
                        Image("hsa_tax_shape")
                            .resizable().frame(width: 201,
                                               height: 23,
                                               alignment: .center)
                        Text("个人所得税大病医疗专项附加扣除")
                            .font(.system(size: 12, weight: .thin, design: .serif))
                            .foregroundColor(Color.white)
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                    Spacer()
                    Text("一键查询 轻松获取")
                        .font(.system(size: 12, weight: .thin, design: .serif))
                        .foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24))
                }
                Spacer()
                HStack(alignment:.center,spacing: 0) {
                    HStack(spacing: 16){
                        Text("年度费用\n汇总查询")
                            .font(.system(size: 14, weight: .thin, design: .serif))
                            .foregroundColor(Color.black)
                        Image("hsa_tax_sum")
                            .resizable().frame(width: 44,
                                               height: 44,
                                               alignment: .center)
                    }.frame(width: (UIScreen.main.bounds.width-32)/2,height: 64)
                    VStack{}.frame(width: 1,height: 32).background(Color.red)
                    HStack(spacing: 16){
                        Text("年度费用\n结算查询")
                            .font(.system(size: 14, weight: .thin, design: .serif))
                            .foregroundColor(Color.black)
                        Image("hsa_tax_plus")
                            .resizable().frame(width: 44,
                                               height: 44,
                                               alignment: .center)
                    }.frame(width: (UIScreen.main.bounds.width-32)/2,height: 64)
                }.frame(width: UIScreen.main.bounds.width - 32,height: 64)
            }
        }.frame(width: deviceWidth,height: 90)
    }
}


struct NoticeView: View {
    var body: some View {
        ZStack{
            Color(hex:"#F0F4FE")
                .cornerRadius(8)
                .padding(.horizontal,16)
            HStack(spacing: 0){
                HStack(alignment: .center){
                    Image("logo_notice")
                        .resizable().frame(width: 30,
                                           height: 34,
                                           alignment: .center)
                }.frame(width: 54).padding(.horizontal,12)
                VStack{}.frame(width: 1,height: 32).background(Color.red)
//                            Spacer()
                VStack(alignment: .leading,spacing: 12){
                    Text("国家医疗保障局监制")
                        .font(.system(size: 12, weight: .thin, design: .serif))
                        .foregroundColor(Color.gray)
                    HStack(alignment: .bottom, spacing: 6){
                        Text("医保码")
                            .font(.system(size: 24, weight: .bold, design: .serif))
                            .foregroundColor(Color.green)
                        Text("医保电子凭证")
                            .font(.system(size: 14, weight: .bold, design: .serif))
                            .foregroundColor(Color.green).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                }.frame(height: 88).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                Spacer()
                Image("logo_go")
                    .resizable().frame(width: 13,
                                       height: 12,
                                       alignment: .center).padding(.horizontal,12)
            }.frame(width: deviceWidth-32)
        }.frame(width: deviceWidth,height: 88)
    }
}

struct HorizontalView: View {
    var body: some View {
        HStack(alignment:.top,spacing: 10) {
            ZStack{
                Color.red
                    .cornerRadius(8)
            }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 54)
            ZStack{
                Color.yellow
                    .cornerRadius(8)
            }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 54)
        }.frame(width: UIScreen.main.bounds.width,height: 54).padding(EdgeInsets(top: 16, leading:0, bottom: 0, trailing: 0))
    }
}

struct SpecialView: View {
    var body: some View {
        HStack(alignment:.top,spacing: 10){
            ZStack{
                Color.red
                    .cornerRadius(8)
            }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 152)
            VStack{
                ZStack{
                    Color.blue
                        .cornerRadius(8)
                }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 70)
                Spacer()
                ZStack{
                    Color.yellow
                        .cornerRadius(8)
                }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 70)
            }
        }.frame(width: UIScreen.main.bounds.width,height: 152).padding(EdgeInsets(top: 16, leading:0, bottom: 0, trailing: 0))
    }
}

struct PersonalYueView: View {
    var body: some View {
        HStack{
            Text("医保个人账户余额（元）")
                .font(.system(size: 14, weight: .thin, design: .serif))
            .foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            Spacer()
            HStack{
                Text("2342.00")
                    .font(.system(size: 14, weight: .bold, design: .serif))
                .foregroundColor(Color.blue)
                Image("elec_eyes")
                .resizable()
                .frame(width: 20,
                       height: 20,
                       alignment: .center)
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }.frame(width: UIScreen.main.bounds.width - 36,height: 39)
    }
}

struct FunctionsView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                ForEach(0 ..< 3) {_ in
                    VStack(alignment: .center, spacing: 0) {
                        Image("elec_func_00")
                        .resizable()
                        .frame(width: 36,
                               height: 36,
                               alignment: .center).padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                        Spacer()
                        Text("SwiftUI")
                            .font(.system(size: 14, weight: .thin, design: .serif))
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
                    }
                }.frame(width: geometry.size.width/3, height: 108)
            }
        }.frame(width: UIScreen.main.bounds.width - 32,height: 108).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct ElecCertView_Previews: PreviewProvider {
    static var previews: some View {
        ElecCertView()
    }
}
////
////
////struct ElecCertView: View {
////    
////    var body: some View {
////        HStack(alignment:.top,spacing: 0){
////            ZStack{
////                Color.red
////                    .cornerRadius(8)
////            }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 152)
////            Spacer()
////            VStack{
////                ZStack{
////                    Color.blue
////                        .cornerRadius(8)
////                }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 70)
////                Spacer()
////                ZStack{
////                    Color.yellow
////                        .cornerRadius(8)
////                }.frame(width: (UIScreen.main.bounds.width-42)/2,height: 70)
////            }
////        }.frame(width: UIScreen.main.bounds.width,height: 152).padding(EdgeInsets(top: 16, leading:16, bottom: 16, trailing: 16))
////    }
////}
