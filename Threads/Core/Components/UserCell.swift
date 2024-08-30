//
//  UserCell.swift
//  Threads
//
//  Created by Aristide LAUGA on 31/07/2024.
//

import SwiftUI

struct UserCell: View {
	var body: some View {
		HStack {
			CircularProfileImageView()
			
			VStack(alignment: .leading) {
				Text("JustARandomGuy")
					.fontWeight(.semibold)
				
				Text("Jayam Carter")
			}
			.font(.footnote)
			
			Spacer()
			
			Text("Follow")
				.font(.subheadline)
				.fontWeight(.semibold)
				.frame(width: 100, height: 32)
				.overlay(
					RoundedRectangle(cornerRadius: 10)
						.stroke(Color(.systemGray4), lineWidth: 1)
				)
		}
		.padding(.horizontal)
	}
}

#Preview {
	UserCell()
}
