//
//  ContentView.swift
//  FunnelVisionTest
//
//  Created by Ben Gottlieb on 5/12/26.
//

import SwiftUI
import FunnelVision

enum LifeCycleEvent: String, AnalyticsEvent {
    case didStartUp
}

extension Analytics {
    static func track(_ event: LifeCycleEvent) { self.track(event: event) }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .onAppear {
                    Analytics.track(.didStartUp)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
