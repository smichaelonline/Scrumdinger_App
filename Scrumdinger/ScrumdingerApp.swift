//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
          NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
          }
        }
    }
}
