//
//  FeedView.swift
//  Threads
//
//  Created by Aristide LAUGA on 24/04/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
		NavigationStack {
			ScrollView(showsIndicators: false) {
				LazyVStack {
					ForEach(0...10, id: \.self) { thread in
						ThreadCell()
					}
				}
			}
			.refreshable {
				print("DEBUG: Refresh Threads ")
			}
			.navigationTitle("Threads")
			.navigationBarTitleDisplayMode(.inline)

		}
		.toolbar {
			ToolbarItem(placement: .topBarTrailing) {
				Button {

				} label: {
					Image(systemName: "arrow.counterclockwise")
						.foregroundColor(.black)
				}
			}
		}
    }
}

#Preview {
    NavigationStack {
    	FeedView()
    }
}
