//
//  WatchLandmarksApp.swift
//  WatchLandmarks Watch App
//
//  Created by by on 2023/8/23.
//

import SwiftUI

@main
struct WatchLandmarks_Watch_AppApp: App {
    @StateObject private var modelData = ModelData();
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear");
        #endif
    }
}
