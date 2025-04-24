//
//  Hi_SwiftUIApp.swift
//  Hi-SwiftUI
//
//  Created by stone on 2024/4/3.
//

import SwiftUI

@main
struct Hi_SwiftUIApp: App {
    
    @StateObject var settings = Settings()
    
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(settings)
        }
    }
}
