//
//  Styles.swift
//  Duplicate Tab
//
//  Created by Ty Irvine on 2021-09-28.
//

import Foundation
import SwiftUI

extension Double {

	static let mediumOpacity = 0.5

	static let lightOpacity = 0.25
}

extension Text {

	func H1() -> some View {
		self.font(.system(size: 38, weight: .medium))
	}

	func H2() -> some View {
		self.font(.system(size: 34, weight: .medium))
	}

	func H3() -> some View {
		self.font(.system(size: 28, weight: .medium))
	}

	func H4() -> some View {
		self.font(.system(size: 24, weight: .medium))
	}

	func Body() -> some View {
		self.font(.system(size: 17, weight: .regular))
			.lineSpacing(5.0)
	}
}
