//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
  @State private var scrums = DailyScrum.sampleData
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ScrumsView(scrums: $scrums)
      }
    }
  }
}
