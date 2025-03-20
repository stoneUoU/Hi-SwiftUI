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
                    ZStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                            .frame(width: UIScreen.main.bounds.width - 32, height: 164)
                                            .foregroundColor(.white).padding(EdgeInsets(top: 32, leading: 16, bottom: 0, trailing: 16))
                            
                        }
                        VStack(spacing: 0) {
                            ZStack {
                                Image("elec_banner")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width - 36,
                                       height: 125,
                                       alignment: .center).padding(EdgeInsets(top: 34, leading: 2, bottom: 0, trailing: 2))
                                VStack {
                                    HStack{
                                        
                                    }.frame(width: UIScreen.main.bounds.width - 36,height: 60).background(Color.green)
                                    Spacer()
                                }.padding(EdgeInsets(top: 34, leading: 0, bottom: 0, trailing: 0))
                            }
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
                    }.frame(width: UIScreen.main.bounds.width - 32, height: 164)
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
                    Spacer()
                }.frame(width: geometry.size.width, height: 360).background(.red).padding(EdgeInsets(top: 120, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

struct ElecCertView_Previews: PreviewProvider {
    static var previews: some View {
        ElecCertView()
    }
}



