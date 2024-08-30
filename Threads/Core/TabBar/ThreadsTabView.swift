//
//  ThreadsTabView.swift
//  Threads
//
//  Created by Aristide LAUGA on 12/04/2024.
//

import SwiftUI

struct ThreadsTabView: View {
	@State private var selectedTab = 0
	var tabModels = [
		TabModel(view: AnyView(FeedView()), index: 0, image: "house.fill", secondImage: "house"),
		TabModel(view: AnyView(ExploreView()), index: 1, image: "magnifyingglass"),
		TabModel(view: AnyView(CreateThreadView()), index: 2, image: "plus"),
		TabModel(view: AnyView(ActivityView()), index: 3, image: "heart.fill", secondImage: "heart"),
		TabModel(view: AnyView(ProfileView()), index: 4, image: "person.fill", secondImage: "person")
	]

	var body: some View {
		TabView(selection: $selectedTab) {
			//			FeedView()
			//				.tabItem {
			//					Image(systemName: selectedTab == 0 ? "house.fill" : "house")
			//						.environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
			//				}
			//				.onAppear { selectedTab = 0 }
			//				.tag(0)
			//
			//			ExploreView()
			//				.tabItem {
			//					Image(systemName: "magnifyingglass")
			//				}
			//				.onAppear { selectedTab = 1 }
			//				.tag(1)
			//
			//			CreateThreadView()
			//				.tabItem {
			//					Image(systemName: "plus")
			//				}
			//				.onAppear { selectedTab = 2 }
			//				.tag(2)
			//
			//
			//			ActivityView()
			//				.tabItem {
			//					Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
			//						.environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
			//				}
			//				.onAppear { selectedTab = 3 }
			//				.tag(3)
			//
			//
			//			ProfileView()
			//				.tabItem {
			//					Image(systemName: selectedTab == 4 ? "person.fill" : "person")
			//						.environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
			//				}
			//				.onAppear { selectedTab = 4 }
			//				.tag(4)
			ForEach(tabModels, id: \.index) { tabModel in
				CustomTabItem(selectedTab: $selectedTab, tabModel: tabModel)
					.body.onAppear { selectedTab = tabModel.index }
					.tag(tabModel.index)
			}
		}
		.tint(.black)
	}
}

struct CustomTabItem {
	@Binding var selectedTab: Int
	var tabModel: TabModel

	var body: some View {
		tabModel.view
			.tabItem {
				if let filledImage = tabModel.secondImage {
					Image(systemName: selectedTab == tabModel.index ? tabModel.image : filledImage)
						.environment(\.symbolVariants, selectedTab == tabModel.index ? .fill : .none)
				} else {
					Image(systemName: tabModel.image)
				}
			}
	}
}

struct TabModel {
	var view: AnyView
	var index: Int
	var image: String
	var secondImage: String?
}

#Preview {
	ThreadsTabView()
}
