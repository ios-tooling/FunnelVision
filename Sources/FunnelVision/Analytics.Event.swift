//
//  Analytics.Event.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/11/26.
//

import Foundation

extension Analytics {
    public struct Event: Codable, Sendable, RawRepresentable {
        public var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        
    }
}
