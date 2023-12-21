//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Oscar Correa on 12/14/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
//            MeetingView()
        }
        
    }
}
