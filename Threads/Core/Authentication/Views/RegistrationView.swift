//
//  RegistrationView.swift
//  Threads
//
//  Created by Aristide LAUGA on 12/04/2024.
//

import SwiftUI

struct RegistrationView: View {
	@Environment(\.dismiss) var dismiss
	@State private var email = ""
	@State private var password = ""
	@State private var fullname = ""
	@State private var username = ""

	var body: some View {
		VStack {
			Spacer()
			Image(.threadsAppIcon)
				.resizable()
				.scaledToFit()
				.frame(width: 120, height: 120)
				.padding()

			VStack {
				TextField("Enter your email", text: $email)
					.modifier(ThreadsTextFieldModifier())
					.textInputAutocapitalization(.none)
				TextField("Enter your passowrd", text: $password)
					.modifier(ThreadsTextFieldModifier())
				TextField("Enter your full name", text: $fullname)
					.modifier(ThreadsTextFieldModifier())
				TextField("Enter your full name", text: $username)
					.modifier(ThreadsTextFieldModifier())
			}

			Button {

			} label: {
				Text("Sign Up")
					.font(.subheadline)
					.fontWeight(.semibold)
					.foregroundStyle(.white)
					.frame(width: 352, height: 44)
					.background(.black)
					.cornerRadius(8)
			}
			.padding(.vertical)

			Spacer()

			Divider()

			Button {
				dismiss()
			} label: {
				Text("Already have an account? **Sign in**")
					.foregroundStyle(.black)
					.font(.footnote)
			}
			.padding(.vertical, 16)
		}
	}
}

#Preview {
	RegistrationView()
}
