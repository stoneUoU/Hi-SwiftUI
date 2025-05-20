//
//  HiNavigatorView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/25.
//
import SwiftUI

struct HiNavigatorView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: HomeView()) {
                                    Text("Go to Detail View")
                                }
            }
            .navigationTitle("主页")
        }
    }
}

struct HiddenView: View {
    var body: some View {
        Text("这是隐藏导航栏的页面")
            .navigationBarHidden(true) // 隐藏导航栏
    }
}
