//
//  MainTabBarView.swift
//  Bu
//
//  Created by Giga Khizanishvili on 25.01.24.
//

import SwiftUI

struct MainTabBarView: View {
    @State private var navigationPath: [NavigationItem] = []
    var body: some View {
        NavigationStack(path: $navigationPath) {
            TabView {
                Text("First Page")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("First")
                    }

                Text("Second Page")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Second")
                    }

                SettingsView()
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Settings")
                    }
            }
        }
    }
}

#Preview {
    MainTabBarView()
}
