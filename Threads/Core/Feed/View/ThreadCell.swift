//
//  ThreadCell.swift
//  Threads
//
//  Created by Aristide LAUGA on 19/07/2024.
//

import SwiftUI

struct ThreadCell: View {
	var body: some View {
		VStack {
			HStack(alignment: .top, spacing: 12) {
				Image(.randomGuy)
					.resizable()
					.scaledToFill()
					.frame(width: 40, height: 40)
					.clipShape(Circle())

				VStack(alignment: .leading, spacing: 4) {
					HStack {
						Text("maxverstappen1")
							.font(.footnote)
							.fontWeight(.semibold)

						Spacer()

						Text("10m")
							.font(.caption)
							.foregroundColor(Color(.systemGray3))

						Button {

						} label: {
							Image(systemName: "ellipsis")
								.foregroundColor(Color(.darkGray))
						}
					}

					Text("Formula 1 Champion")
						.font(.footnote)
						.multilineTextAlignment(.leading)

					HStack(spacing: 16) {
						Button {

						} label: {
							Image(systemName: "heart")
						}

						Button {

						} label: {
							Image(systemName: "bubble.right")
						}

						Button {

						} label: {
							Image(systemName: "arrow.rectanglepath")
						}

						Button {

						} label: {
							Image(systemName: "paperplane")
						}
					}
					.padding(.vertical, 8)
					.foregroundColor(.black)
				}
			}
			Divider()
		}
		.padding()
	}
}

#Preview {
	ThreadCell()
}
