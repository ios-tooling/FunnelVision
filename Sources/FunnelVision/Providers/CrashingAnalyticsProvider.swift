//
//  CrashingAnalyticsProvider.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

final class CrashingAnalyticsProvider: AnalyticsProvider {
	func log(event: String, level: LogLevel = .fatal, meta: [String: any Sendable]? = nil) {
		fatalError("Please set an analytics provider in the app.")
	}
}
