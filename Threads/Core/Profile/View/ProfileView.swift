//
//  ProfileView.swift
//  Threads
//
//  Created by Aristide LAUGA on 24/04/2024.
//

import SwiftUI

struct ProfileView: View {
	@State private var selectedFilter: ProfileThreadFilter = .threads
	@Namespace var animation

	var body: some View {
		ScrollView(showsIndicators: false) {
			// Bio and stats
			VStack(spacing: 20) {
				HStack(alignment: .top) {
					VStack(alignment: .leading, spacing: 12) {
						VStack(alignment: .leading, spacing: 4) {
							// Fullname and username
							Text("Charles Leclerc")
								.font(.title2)
								.fontWeight(.semibold)

							Text("charles_leclerc")
								.font(.subheadline)
						}
						Text("Formula 1 driver for Scuedria Ferrari")
							.font(.footnote)

						Text("2 followers")
							.font(.caption)
							.foregroundColor(.gray)
					}
					Spacer()

					CircularProfileImageView()
				}

				Button {

				} label: {
					Text("Follow")
						.font(.subheadline)
						.fontWeight(.semibold)
						.foregroundColor(.white)
						.frame(width: 352, height: 32)
						.background(.black)
						.cornerRadius(8)
				}

				// MARK: User content list view
				VStack {
					HStack {
						ForEach(ProfileThreadFilter.allCases) { filter in
							VStack {
								Text(filter.title)
									.font(.subheadline)
									.fontWeight(selectedFilter == filter ? .semibold : .regular)

								//TODO: come with something less repetitive
								if selectedFilter == filter {
									Rectangle()
										.foregroundStyle(.black)
										.frame(width: 180, height: 1)
										.matchedGeometryEffect(id: "item", in: animation)
								} else {
									Rectangle()
										.foregroundStyle(.clear)
										.frame(width: 180, height: 1)
								}
							}
							.onTapGesture {
								withAnimation(.spring()) {
									selectedFilter = filter
								}
							}
						}
					}
				}
			}
		}
		.padding(.horizontal)
	}
}

#Preview {
	ProfileView()
}
