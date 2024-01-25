//
//  SettingsView.swift
//  Bu
//
//  Created by Mariam Ormotsadze on 25.01.24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("General")) {
                    NavigationLink(destination: Text("General Settings")) {
                        Label("General Settings", systemImage: "gear")
                    }
                    NavigationLink(destination: Text("Account")) {
                        Label("Account", systemImage: "person")
                    }
                }

                Section(header: Text("Appearance")) {
                    NavigationLink(destination: Text("Theme")) {
                        Label("Theme", systemImage: "paintpalette")
                    }
                    Toggle("Dark Mode", isOn: .constant(false))
                }

                Section(header: Text("About")) {
                    NavigationLink(destination: Text("About Us")) {
                        Label("About Us", systemImage: "info.circle")
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


#Preview {
    SettingsView()
}
