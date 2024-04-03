//
//  ContentView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2024/4/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(0.8)
        Button(action: {
            // 按钮操作
        }, label: {
            Text("按钮")
        })
        .padding()
        .foregroundColor(.blue)
        .background(Circle())
        Text("Hello, SwiftUI!")
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(0.8)
    }
}

#Preview {
    ContentView()
}
