//
//  File.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public extension Analytics {
	static func setup(with provider: AnalyticsProvider) {
		Task { await instance.setup(with: provider) }
	}

	func setup(with provider: AnalyticsProvider) {
		self.provider = provider
	}
}
