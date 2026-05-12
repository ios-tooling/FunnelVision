//
//  File.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public enum LifeCycleEvent: String, AnalyticsEvent {
    case appStart
    case appTerminate
    case appResume
}

public extension Analytics {
    func track(_ event: LifeCycleEvent) {
        track(event: event)
    }
}
