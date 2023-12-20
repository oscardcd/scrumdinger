//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Oscar Correa on 12/14/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
//            MeetingView()
        }
        
    }
}
