//
//  LearnSwiftUIApp.swift
//  LearnSwiftUI
//
//  Created by by on 2023/7/24.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
            // 向下传递环境变量，以便子视图可以读取数据
                .environmentObject(modelData)
        }
    }
}
