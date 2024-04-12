//
//  LoginView.swift
//  Threads
//
//  Created by Aristide LAUGA on 06/04/2024.
//

import SwiftUI

struct LoginView: View {
	@State private var email = ""
	@State private var password = ""
    var body: some View {
		NavigationStack {
			VStack {
				Spacer()
				Image(.threadsAppIcon)
					.resizable()
					.scaledToFit()
					.frame(width: 120, height: 120)
					.padding()

				VStack {
					TextField("Enter your email", text: $email)
						.textInputAutocapitalization(.none)
						.modifier(ThreadsTextFieldModifier())

					SecureField("Enter your password", text: $password)
						.modifier(ThreadsTextFieldModifier())
				}

				NavigationLink {
					Text("Forgot password")
				} label: {
					Text("Forgot Password?")
						.font(.footnote)
						.fontWeight(.semibold)
						.padding(.vertical)
						.padding(.trailing, 28)
						.foregroundStyle(.black)
						.frame(maxWidth: .infinity, alignment: .trailing)
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

				Spacer()

				Divider() 

				NavigationLink {
					RegistrationView()
						.navigationBarBackButtonHidden(true)
				} label: {
					VStack {
						Text("Don't have an account? **Sign Up**")
					}
					.foregroundStyle(.black)
					.font(.footnote)
				}
				.padding(.vertical, 16)
			}
		}
    }
}

#Preview {
    LoginView()
}
