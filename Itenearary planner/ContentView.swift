//
//  ContentView.swift
//  Itenearary planner
//
//  Created by James Toh on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            IteneararyView()
                .tabItem {
                    Label("Home", systemImage: "list.bullet.clipboard.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
