//
//  AnalyticsProvider.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/11/26.
//

import Foundation

public protocol AnalyticsProvider: Sendable {
	func log(event: String, level: LogLevel,  meta: [String: any Sendable]?)
}
