//
//  Hi_SwiftUIApp.swift
//  Hi-SwiftUI
//
//  Created by stone on 2024/4/3.
//

import SwiftUI
import UIKit
@main
struct Hi_SwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    @StateObject var settings = Settings()
    @StateObject var pathManager = PathManager()
    var body: some Scene {
        WindowGroup {
            HrssHomeView().environmentObject(settings)
                .environmentObject(pathManager)
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("Application is active")
            case .inactive:
                print("Application is inactive")
            case .background:
                print("Application is background")
            default:
                print("unexpected value.")
            }
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
         
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                
            // 初始化友盟推送
            UMengPushHelper.shared.setupUMengPush(
                appKey: "682bdd2b55d24d3412d6f3cf",
                launchOptions: launchOptions
            )
            
            return true
        }
        
        func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
            // 注册设备token
            UMengPushHelper.shared.registerDeviceToken(deviceToken)
        }
            
        func application(_ application: UIApplication,
                       didFailToRegisterForRemoteNotificationsWithError error: Error) {
            print("注册推送失败: \(error.localizedDescription)")
        }
    }
}
