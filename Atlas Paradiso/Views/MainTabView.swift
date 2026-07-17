//
//  MainTabView.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/17/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Explpre", systemImage: "globe.americas.fill")
                }
            Text("Map")
                .tabItem{
                    Label("Map", systemImage: "map.fill")
                }
            
            Text("Favorites")
                .tabItem{
                    Label("Favorites", systemImage: "star.fill")
                }
            
            Text("Settings")
                .tabItem{
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
