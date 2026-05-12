//
//  NullAnalyticsProvider.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public final class NullAnalyticsProvider: AnalyticsProvider {
	public init() { }
	public func log(event: String, level: LogLevel = .fatal, meta: [String: any Sendable]? = nil) {
		
	}
}
