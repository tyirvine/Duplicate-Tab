//
//  ContentView.swift
//  Duplicate Tab
//
//  Created by Ty Irvine on 2021-09-27.
//

import StoreKit
import SwiftUI

struct ContentView: View {

	let version = UIApplication.appVersion

	@State private var amountSelected: String = ""

	@State private var isStoreKitReachable: Bool?

	@FocusState private var amountIsFocused: Bool

	var settingsLabel = try! AttributedString(markdown: "Open **Settings**")

	// In the initializer, fetch all of the products so they can be purchased by the customer
	init() {

		// Build the settings label
		settingsLabel.foregroundColor = .blue
	}

	var body: some View {

		NavigationView {

			Form {

				// MARK: - Instructions
				SectionWithoutBacking {

					// Keeps objects aligned left
					HStack {

						// Instruction stack
						VStack(alignment: .leading, spacing: 15) {
							Text("To enable this browser extension ⤵︎").Body()
							Instruction(1, settingsLabel) {
								guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else { return }
								UIApplication.shared.open(settingsURL, options: [:])
							}
							Instruction(2, "Select Safari")
							Instruction(3, "Select Extensions")

							// Duplicate tab icon instruction
							HStack {
								Instruction(4, try! AttributedString(markdown: "Select **Duplicate Tab**"))
								Image(uiImage: Bundle.main.icon ?? UIImage())
									.resizable()
									.frame(width: 25, height: 25)
									.cornerRadius(6)
							}

							Instruction(5, "Toggle the switch on")
						}

						Spacer()
					}
					.padding([.top], 8)
					.padding([.leading], 10)
				}

				// MARK: - Links
				Section(header: Text("Links")) {
					Link(
						color: .blue,
						icon: "eyeglasses",
						iconSize: 13,
						label: "Privacy Policy",
						url: "https://github.com/tyirvine/Duplicate-Tab#privacy-policy"
					)

					Link(
						color: .orange,
						icon: "exclamationmark.bubble.fill",
						label: "Feedback",
						url: "https://github.com/tyirvine/Duplicate-Tab/issues/new/choose"
					)

					Link(
						color: .green,
						icon: "curlybraces",
						iconSize: 14,
						label: "Source",
						url: "https://github.com/tyirvine/Duplicate-Tab"
					)
				}

				// MARK: - Creator Info
				SectionWithoutBacking {
					HStack {

						Spacer()

						// Creator info stack
						VStack(spacing: 13) {

							Text("©2021 Ty Irvine")

							if let version = version {
								Text("\(version)")
							}
						}
						.opacity(.lightOpacity)

						Spacer()
					}
					.padding([.top], 10)
					.padding([.bottom], 6)
				}
			}

			// Main title must be attached to the form
			.navigationTitle("Duplicate Tab")
		}
		.navigationBarBackButtonHidden(true)
		.navigationViewStyle(StackNavigationViewStyle())
	}
}
