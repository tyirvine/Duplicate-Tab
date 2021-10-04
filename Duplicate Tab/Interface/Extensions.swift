//
//  Extensions.swift
//  Duplicate Tab
//
//  Created by Ty Irvine on 2021-09-28.
//

import Foundation
import SwiftUI

extension UIApplication {
	static var appVersion: String? {
		return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
	}
}

public extension Bundle {
	var icon: UIImage? {
		if let icons = infoDictionary?["CFBundleIcons"] as? [String: Any],
		   let primaryIcon = icons["CFBundlePrimaryIcon"] as? [String: Any],
		   let iconFiles = primaryIcon["CFBundleIconFiles"] as? [String],
		   let lastIcon = iconFiles.last
		{
			return UIImage(named: lastIcon)
		}
		return nil
	}
}
