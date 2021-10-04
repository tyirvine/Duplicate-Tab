//
//  Components.swift
//  Duplicate Tab
//
//  Created by Ty Irvine on 2021-09-30.
//

import StoreKit
import SwiftUI

struct Instruction: View {

	let input: AttributedString
	let index: Int
	let action: (() -> Void)?

	internal init(_ index: Int, _ input: AttributedString, action: (() -> Void)? = nil) {
		self.input = input
		self.index = index
		self.action = action
	}

	var body: some View {
		HStack(spacing: 10) {
			Text("\(index.description).").Body().opacity(.mediumOpacity)

			if action == nil {
				Text(input).Body()
			}

			else if let action = action {
				Button {
					action()
				} label: {
					Text(input).Body()
				}
				.buttonStyle(PlainButtonStyle())
			}
		}
	}
}

struct Link: View {

	let color: Color
	let icon: String
	let iconSize: CGFloat
	let label: String
	let url: String

	internal init(color: Color, icon: String, iconSize: CGFloat = 15, label: String, url: String) {
		self.color = color
		self.icon = icon
		self.iconSize = iconSize
		self.label = label
		self.url = url
	}

	let size: CGFloat = 27

	var body: some View {

		Button {

			// Opens up the designated url
			if let urlUnwrapped = URL(string: url) {
				UIApplication.shared.open(urlUnwrapped)
			}
		} label: {

			// Main label stack
			HStack(spacing: 12) {

				Image(systemName: icon)
					.font(.system(size: iconSize))
					.foregroundColor(.white)
					.frame(width: size, height: size, alignment: .center)
					.background(
						color
					)
					.cornerRadius(5)

				Text(label)

				Spacer()

				Image(systemName: "link")
					.font(.system(size: 17, weight: .medium))
					.opacity(.lightOpacity)
			}
			.padding([.vertical], 6)
		}

		// Removes that blue highlight on the button
		.foregroundColor(.primary)
	}
}

struct SectionWithoutBacking<Content>: View where Content: View {

	var content: Content

	internal init(@ViewBuilder content: @escaping () -> Content) {
		self.content = content()
	}

	var body: some View {
		Section {
			content
		}
		.listRowInsets(.init())
		.listRowBackground(Color.clear)
		.listRowSeparator(.hidden)
	}
}
