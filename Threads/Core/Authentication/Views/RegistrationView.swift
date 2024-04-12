//
//  RegistrationView.swift
//  Threads
//
//  Created by Aristide LAUGA on 12/04/2024.
//

import SwiftUI

struct RegistrationView: View {
	@Environment(\.dismiss) var dismiss
	@State private var values = Array(repeating: "", count: 4)
	private var placeholder = ["email", "password", "full name", "username"]

	var body: some View {
		VStack {
			Spacer()
			Image(.threadsAppIcon)
				.resizable()
				.scaledToFit()
				.frame(width: 120, height: 120)
				.padding()

			ForEach(placeholder.indices, id: \.self) { index in
				CustomTextFieldView(placeholder: placeholder[index], initialValue: values[index])
					.onChange(of: values[index]) { newValue in
						values[index] = newValue
					}
			}

			Button {

			} label: {
				Text("Login")
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

struct CustomTextFieldView: View {
	@State private var text: String
	let placeholder: String


	init(placeholder: String, initialValue: String = "") {
		self.placeholder = placeholder
		_text = State(initialValue: initialValue)
	}

	var body: some View {
		TextField("Enter your \(placeholder)", text: $text)
			.modifier(ThreadsTextFieldModifier())

	}
}

#Preview {
	RegistrationView()
}
