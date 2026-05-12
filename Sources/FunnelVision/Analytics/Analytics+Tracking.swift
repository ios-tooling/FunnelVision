//
//  Analytics+Tracking.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public extension Analytics {
	static nonisolated func track(event: some AnalyticsEventMesssage, level: LogLevel = .info, meta: [String: any Sendable]? = nil) {
		
		Task {
			await instance.track(event: event, level: level, meta: meta)
		}
	}
	
	func track(event: some AnalyticsEventMesssage, level: LogLevel = .info, meta: [String: any Sendable]? = nil) {
		provider.log(event: event.stringValue, level: level, meta: meta)
	}
	
	static nonisolated func trace(event: some AnalyticsEventMesssage, meta: [String: any Sendable]? = nil) { track(event: event, level: .trace, meta: meta) }
	static nonisolated func debug(event: some AnalyticsEventMesssage, meta: [String: any Sendable]? = nil) { track(event: event, level: .debug, meta: meta) }
	static nonisolated func info(event: some AnalyticsEventMesssage, meta: [String: any Sendable]? = nil) { track(event: event, level: .info, meta: meta) }
	static nonisolated func warn(event: some AnalyticsEventMesssage, meta: [String: any Sendable]? = nil) { track(event: event, level: .warn, meta: meta) }
	static nonisolated func error(event: some AnalyticsEventMesssage, meta: [String: any Sendable]? = nil) { track(event: event, level: .error, meta: meta) }
	static nonisolated func fatal(event: some AnalyticsEventMesssage, meta: [String: any Sendable]? = nil) { track(event: event, level: .fatal, meta: meta) }
}
