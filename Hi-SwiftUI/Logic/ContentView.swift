//
//  ContentView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2024/4/3.
//

import SwiftUI

class Settings: ObservableObject {
    @Published var theme = "Dark"
}

class DataModel: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    @StateObject private var model = DataModel()
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("userName") var userName:String?
    var body: some View {
        VStack{
            Text("父类： \(model.count)")
            .font(.title)
            .foregroundColor(Color.blue)
            .padding()
            .background(Color.red).padding(EdgeInsets(top: 36, leading: 16, bottom: 16, trailing: 16))
            ChildView(model: model)
            SonView(model: model).padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
            SonView(model: model).padding(EdgeInsets(top: 36, leading: 16, bottom: 0, trailing: 16))
            EnvironmentView().padding(EdgeInsets(top: 36, leading: 16, bottom: 0, trailing: 16))
            Text(colorScheme == .dark ? "深色模式" : "浅色模式").padding(EdgeInsets(top: 36, leading: 16, bottom: 0, trailing: 16))
            Text(userName ?? "").padding(EdgeInsets(top: 36, leading: 16, bottom: 0, trailing: 16))
            
        }.onAppear {
//            userName = UserDefaults.standard.string(forKey: "userName")
          }
    }
}

struct EnvironmentView: View {
    @EnvironmentObject var settings: Settings
    var body: some View {
        Text("主题: \(settings.theme)")
    }
}

struct ChildView: View {
    @ObservedObject var model: DataModel
    @EnvironmentObject var settings: Settings
    var body: some View {
        Button("点击 \(model.count)") {
            model.count += 1
            settings.theme = model.count%2 == 1 ? "Dark" : "Light"
            UserDefaults.standard.setValue("I am stone", forKey: "userName")
        }
    }
}

struct SonView: View {
    @ObservedObject var model: DataModel
    var body: some View {
        Text("展示： \(model.count)")
            .font(.title)
        .foregroundColor(Color.blue)
        .padding()
        .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ContentView: View {
//    @State private var isOn = false
//    @State private var isOnStr = "isOnStr"
//    var body: some View {
//        VStack{
//            ToggleChild(isOn: $isOn)
//            Text((!isOn) ?"off":"on")
//            .font(.largeTitle)
//            .foregroundColor(Color.blue)
//            .padding()
//            .background(Color.yellow)
//        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
//        
//    }
//}
//
//struct ToggleChild: View {
//    @Binding var isOn: Bool
//    var body: some View {
//        Toggle("开关", isOn: $isOn)
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Hello, SwiftUI!")
//                .font(.largeTitle)
//                .foregroundColor(Color.blue)
//                .padding()
//                .background(Color.yellow)
//            Text("Have a nice day :]")
//        }
//    }
//}

//struct User {
//  var name: String
//  var age: Int
//}
//
//struct ContentView: View {
//  @State var user = User(name: "John", age: 30)
//  var body: some View {
//    VStack {
//      UserView(user: $user)
//      EditUserView(user: $user)
//    }
//  }
//}
//
//struct UserView: View {
//  @Binding var user: User
//  var body: some View {
//    VStack {
//      Text("Name: \(user.name)")
//      Text("Age: \(user.age)")
//    }
//  }
//}
//
//struct EditUserView: View {
//  @Binding var user: User
//  var body: some View {
//    VStack {
//      TextField("Name", text: $user.name)
//      Stepper("Age: \(user.age)", value: $user.age)
//    }
//  }
//}


//struct ContentView: View {
//  @State var name = "John"
//  var body: some View {
//    VStack {
//      TextField("Name", text: $name)
//      Text("Hello, \(name)!")
//    }
//  }
//}


//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        Text("Hello, SwiftUI!")
//            .padding()
//            .foregroundColor(.white)
//            .background(RoundedRectangle(cornerRadius: 10))
//            .scaleEffect(0.8)
//        Button(action: {
//            // 按钮操作
//        }, label: {
//            Text("我是林磊")
//        })
//        .padding()
//        .foregroundColor(.blue)
//        .background(Circle())
//        Text("Hello, SwiftUI!")
//            .padding()
//            .foregroundColor(.white)
//            .background(RoundedRectangle(cornerRadius: 10))
//            .scaleEffect(0.8)
//        List{
//                HStack{
//                    Image("work").resizable().frame(width: 50, height: 50)
//                    Text("Write SwiftUI book")
//                }
//                HStack{
//                    Image("personal").resizable().frame(width: 50, height: 50)
//                    Text("Read Bible")
//                }
//                HStack{
//                    Image("family").resizable().frame(width: 50, height: 50)
//                    Text("Bring kids out to play")
//                }
//                HStack{
//                    Image("family").resizable().frame(width: 50, height: 50)
//                    Text("Fetch wife")
//                }
//                HStack{
//                    Image("family").resizable().frame(width: 50, height: 50)
//                    Text("Call mum")
//                }
//            }
//    }
//}
//
//struct BtnView: View {
//    @Binding var isShowText: Bool
//    var body: some View {
//        Button {
//            isShowText.toggle()
//        } label: {
//            Text("点击")
//        }
// 
//    }
//}
// 
////struct ContentView: View {
////    @State private var isShowText: Bool = true
////    var body: some View {
////        VStack {
////            if(isShowText) {
////                Text("点击后会被隐藏").padding(EdgeInsets(top: 0, leading: 0, bottom: 36, trailing: 0))
////            } else {
////                Text("点击后会被显示").hidden()
////            }
////            BtnView(isShowText: $isShowText)
////        }
////    }
////}
//
////class DelayedUpdater: ObservableObject {
////    @Published var value = 0
////    init() {
////        for i in 1...10 {
////            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
////                self.value += 1
////            }
////        }
////    }
////}
//// 
////struct ContentView: View {
////    @ObservedObject var updater = DelayedUpdater()
////    var body: some View {
////        VStack {
////            Text("\(updater.value)").padding()
////        }
////    }
////}
////
////#Preview {
////    ContentView()
////}
