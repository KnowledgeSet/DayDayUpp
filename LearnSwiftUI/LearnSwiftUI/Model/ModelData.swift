//
//  ModelData.swift
//  LearnSwiftUI
//
//  Created by by on 2023/7/25.
//

import Foundation
import Combine

// 声明可观察对象，SwiftUI订阅对象，并在数据更改时更新需要刷新的视图
final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json");
    // 由于徒步数据是不能修改的，所以不需要声明 @Published
    var hikes: [Hike] = load("hikeData.json");
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.");
    }
    
    do {
        data = try Data(contentsOf: file);
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error).");
    }
    
    do {
        let decoder = JSONDecoder();
        return try decoder.decode(T.self, from: data);
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)");
    }
}
