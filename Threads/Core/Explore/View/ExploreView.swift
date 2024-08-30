//
//  ExploreView.swift
//  Threads
//
//  Created by Aristide LAUGA on 24/04/2024.
//

import SwiftUI

struct ExploreView: View {
	@State private var text = ""
    var body: some View {
		NavigationStack {
			ScrollView {
				LazyVStack {
					ForEach(0...10, id: \.self) { user in
						VStack {
							UserCell()
							
							Divider()
						}
					}
				}
			}
			.navigationTitle("Search")
			.searchable(text: $text, prompt: "Search")
		}
    }
}

#Preview {
    ExploreView()
}
