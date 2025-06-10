//
//  HiNavigatorView.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/25.
//
import SwiftUI

enum Target: Hashable {
    case elecCertView, mockView, healthCodeView, popUpView
}

class PathManager:ObservableObject {
   @Published var path = NavigationPath()
}
