//
//  ContentView.swift
//  FunnelVisionTest
//
//  Created by Ben Gottlieb on 5/12/26.
//

import SwiftUI
import FunnelVision

extension Analytics.Event {
    #AnalyticsEvent("didStartup")
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .onAppear {
                    Analytics.track(.didStartup)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
