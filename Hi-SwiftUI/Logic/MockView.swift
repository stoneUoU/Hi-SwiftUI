//
//  MockView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/3/18.
//

import SwiftUI

struct MockView: View {
    
    @State var username: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var isOn: Bool = false;
    @State var isEditing: Bool = false;
    let data = (0..<5)
    var body: some View {
        VStack(alignment:.center,spacing:36)  {
            
            
            
//            GeometryReader { geometry in
//                  VStack(spacing: 10) {
//                    Text("geometry size: \(geometry.size)")
//                      .font(.subheadline)
//                    HStack(spacing: 0) {
//                      Button("Button 1") {}
//                        .frame(width: geometry.size.width/3, height: 100)
//                        .background(.orange)
//                      Button("Button 2") {}
//                        .frame(width: geometry.size.width/3, height: 100)
//                        .background(.yellow)
//                      Button("Button 3") {}
//                        .frame(width: geometry.size.width/3, height: 100)
//                        .background(.green)
//                    }
//                  }
//                }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
//            List {
//                Section(header: HStack{}.frame(width: UIScreen.main.bounds.width, height: 44).background(Color.red)) {
//                    HStack{}.frame(width: UIScreen.main.bounds.width - 32, height: 72).background(Color.green)
//                    HStack{}.frame(width: UIScreen.main.bounds.width - 32, height: 72).background(Color.yellow)
//                }
//                .listRowInsets(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
//                .listRowBackground(Color.clear).listRowSeparator(Visibility.hidden)
//            }
//            .listStyle(GroupedListStyle())
            
//            VStack(alignment:.center,spacing:16)  {
//                Image("mine_about_hsa_logo_test")
//                .resizable()
//                .frame(width: 62,
//                       height: 62,
//                       alignment: .center)
//                Text("国家医保服务平台")
//                    .foregroundColor(.black)
//                    .font(.system(size: 20, weight: .bold, design: .serif))
//                Text("版本号：1.0.0")
//                    .foregroundColor(.secondary)
//                    .font(.system(size: 14, weight: .thin, design: .serif)).padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
//            }
//            Button {} label: {
//                Text("登录")
//                    .frame(maxWidth:.infinity).frame(height: 44)
//            }
//            .buttonStyle(.borderless)
//            .foregroundColor(.white)
//            .background(.blue)
//            .cornerRadius(22).padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//            
//            
//            Spacer()
//            VStack(alignment:.center,spacing:12)  {
//                Text("《用户注册协议》《隐私政策》")
//                    .foregroundColor(.blue)
//                    .font(.system(size: 14, weight: .thin, design: .serif))
//                Text("国家医疗保障局版权所有")
//                    .foregroundColor(.secondary)
//                    .font(.system(size: 14, weight: .thin, design: .serif))
//            }
//            
            
//            Form {
//               TextField("First Name", text: $firstName)
//               TextField("Last Name", text: $lastName)
//            }
//
//            Section(header: HStack{}.frame(width: 50, height: 90).background(Color.red), footer: Text("I'm footer")) {
//                ForEach(0..<3) {
//                    Text("Hello \($0)")
//                }
//            }
//            
//            Group {
//                Text("Hello World !")
//                Text("Hello World !")
//                }
//                .font(.system(size: 25, design: .monospaced))
//                .padding(5)
            
//            ForEach(data) { e in
//                Text("Hello \(e)")
//                    .bold()
//                    .font(.system(size: 25, design: .monospaced))
//                    .padding(5)
//            }
            
//            ScrollView {
//                Text("SwiftUI").padding(20)
//                Divider()
//                Image("logo").resizable()
//                    .frame(width: 300, height: 300, alignment: .center)
//                Divider()
//                Text("Views and ... user interface.")
//            }
//            .border(Color.gray, width: 1)
//            .cornerRadius(10)
//            .padding(10)
//            .navigationBarTitle(Text("ScrollView"))
            
//            List(0..<5) { item in
//                Text("Hello World !")
//            }.navigationBarTitle(Text("List"), displayMode: .large)
            
//            HStack(alignment:.top,spacing:0) {
//                VStack(alignment:.leading,spacing:25) {
//                    VStack{}.frame(width: 90, height: 50).background(Color.red)
//                    VStack{}.frame(width: 120, height: 50).background(Color.blue)
//                    VStack{}.frame(width: 60, height: 50).background(Color.green)
//                }
//                Spacer()
//            }.background(Color.yellow).frame(width: 200)
//            
//            VStack(alignment:.leading) {
//                HStack(alignment:.top,spacing:25) {
//                    HStack{}.frame(width: 50, height: 90).background(Color.red)
////                    Spacer()
//                    HStack{}.frame(width: 50, height: 120).background(Color.blue)
////                    Spacer()
//                    HStack{}.frame(width: 50, height: 60).background(Color.green)
//                }
//                Spacer()
//            }.background(Color.yellow).frame(height: 200)
            
//            Text("SwiftUI")
//                .foregroundColor(.orange)
//                .bold()
//                .font(.system(.largeTitle))
//                .fontWeight(.medium)
//                .italic()
//                .shadow(color: .black, radius: 1, x: 0, y: 2)
////            Spacer()
//            Image("logo")
//                .resizable()
//                .frame(width: 48,
//                       height: 48,
//                       alignment: .center)
        
//                HStack(alignment:.bottom) {
//                    HStack{}.frame(width: 50, height: 60).background(Color.red)
//                    Spacer()
//                    HStack{}.frame(width: 50, height: 80).background(Color.blue)
//                    Spacer()
//                    HStack{}.frame(width: 50, height: 40).background(Color.green)
//                }.frame(width: 200, height: 160).background(Color.yellow)
//            
//            VStack(alignment:.leading) {
//                Spacer()
//                HStack(alignment:.bottom) {
//                    HStack{}.frame(width: 50, height: 60).background(Color.red)
//                    Spacer()
//                    HStack{}.frame(width: 50, height: 80).background(Color.blue)
//                    Spacer()
//                    HStack{}.frame(width: 50, height: 40).background(Color.green)
//                }
//            }.frame(width: 200, height: 160).background(Color.yellow)
            
//            ZStack {
//                Text("made in China.")
//                Divider() // Just add a line.
//                Text("the People's Republic Of China.")
//            }
//            TextField("username", text: $username, onEditingChanged: { isEditing in
//              print("isEditing: \(isEditing)")
//            }, onCommit: {
//              print("Edit finished")
//            })
//              .textFieldStyle(RoundedBorderTextFieldStyle())
//              .textContentType(.telephoneNumber)
//              .keyboardType(.numberPad)
//              .autocorrectionDisabled().padding(EdgeInsets(top: 54, leading: 16, bottom: 0, trailing: 16))
//            
//            Toggle(isOn: $isOn) {
//                Text("State: \(self.isOn == true ? "开":"关")")
//            }.padding(EdgeInsets(top: 54, leading: 16, bottom: 0, trailing: 16))
        }.padding(EdgeInsets(top: 72, leading: 0, bottom: 16, trailing: 0))
//
    }
}

struct MockView_Previews: PreviewProvider {
    static var previews: some View {
        MockView()
    }
}


