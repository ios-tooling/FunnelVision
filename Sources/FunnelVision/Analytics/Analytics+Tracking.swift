//
//  Analytics+Tracking.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public extension Analytics {
	static nonisolated func track(event: AnalyticsEvent, level: LogLevel = .info, meta: [String: any Sendable]? = nil) {
		
		Task {
			await instance.track(event: event, level: level, meta: meta)
		}
	}
	
	func track(event: AnalyticsEvent, level: LogLevel = .info, meta: [String: any Sendable]? = nil) {
		provider.log(event: event.rawValue, level: level, meta: meta)
	}
	
	static nonisolated func trace(event: AnalyticsEvent, meta: [String: any Sendable]? = nil) { track(event: event, level: .trace, meta: meta) }
	static nonisolated func debug(event: AnalyticsEvent, meta: [String: any Sendable]? = nil) { track(event: event, level: .debug, meta: meta) }
	static nonisolated func info(event: AnalyticsEvent, meta: [String: any Sendable]? = nil) { track(event: event, level: .info, meta: meta) }
	static nonisolated func warn(event: AnalyticsEvent, meta: [String: any Sendable]? = nil) { track(event: event, level: .warn, meta: meta) }
	static nonisolated func error(event: AnalyticsEvent, meta: [String: any Sendable]? = nil) { track(event: event, level: .error, meta: meta) }
	static nonisolated func fatal(event: AnalyticsEvent, meta: [String: any Sendable]? = nil) { track(event: event, level: .fatal, meta: meta) }
}
