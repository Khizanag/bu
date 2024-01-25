//
//  BuApp.swift
//  Bu
//
//  Created by Giga Khizanishvili on 25.01.24.
//

import SwiftUI
import SwiftData

@main
struct BuApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainTabBarView()
        }
        .modelContainer(sharedModelContainer)
    }
}
