//
//  Analytics.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/11/26.
//

import Foundation

public actor Analytics {
    public static let instance = Analytics()
    
    
    var provider: AnalyticsProvider?
    
    public static func setup(with provider: AnalyticsProvider) {
        
    }
    
    public static nonisolated func track(event: AnalyticsEvent, meta: [String: String]? = nil) {
        
    }
}
