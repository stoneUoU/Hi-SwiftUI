//
//  HiDashedLine.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/25.
//

import SwiftUI
 
struct HiDashedLine:View {
    var body: some View {
            GeometryReader { geometry in
                Path { path in
                    path.move(to: CGPoint(x: 0, y: 0)) // 起点
                    path.addLine(to: CGPoint(x: geometry.size.width, y: 0)) // 水平终点
                }
                .stroke(
                    Color.white,
                    style: StrokeStyle(
                        lineWidth: 1,
                        dash: [5, 3] // 5像素线段 + 3像素间隔
                    )
                )
            }
            .frame(height: 0.5) // 控制视图高度
        }
}
