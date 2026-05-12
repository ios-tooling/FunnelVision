//
//  File.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public protocol AnalyticsEventMesssage: Sendable {
    var stringValue: String { get }
}

public protocol AnalyticsEvent: RawRepresentable, AnalyticsEventMesssage where RawValue == String {
    
}

public extension AnalyticsEvent {
    var stringValue: String { rawValue }
}

extension String: AnalyticsEventMesssage {
    public var stringValue: String { self }
}




