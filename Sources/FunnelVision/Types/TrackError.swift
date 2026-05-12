//
//  TrackError.swift
//  FunnelVision
//
//  Created by Ben Gottlieb on 5/12/26.
//

import Foundation

public extension Analytics {
    func track(_ error: Error) {
        track(event: "error", meta: ["error": error.localizedDescription])
    }
}
