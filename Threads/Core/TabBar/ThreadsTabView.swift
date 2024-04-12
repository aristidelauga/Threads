//
//  ThreadsTabView.swift
//  Threads
//
//  Created by Aristide LAUGA on 12/04/2024.
//

import SwiftUI

struct ThreadsTabView: View {
	@State private var selectedTab = 0
	var body: some View {
		TabView(selection: $selectedTab) {
			Text("Feed View")
				.tabItem {
					Image(systemName: selectedTab == 0 ? "house.fill" : "house")
						.environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
				}
			
			Text("Explore")
				.tabItem {
					Image(systemName: "magnifyingglass")
				}
			
			Text("Upload Thread")
				.tabItem {
					Image(systemName: "magnifyingglass")
				}
			
			Text("Activity")
				.tabItem {
					Image(systemName: "magnifyingglass")
				}
			
			Text("Profile")
				.tabItem {
					Image(systemName: "magnifyingglass")
				}
		}
	}
}

#Preview {
	ThreadsTabView()
}
