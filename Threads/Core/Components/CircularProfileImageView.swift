//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Aristide LAUGA on 31/07/2024.
//

import SwiftUI

struct CircularProfileImageView: View {
	var body: some View {
		Image(.randomGuy)
			.resizable()
			.scaledToFill()
			.frame(width: 40, height: 40)
			.clipShape(Circle())
	}
}

#Preview {
	CircularProfileImageView()
}
