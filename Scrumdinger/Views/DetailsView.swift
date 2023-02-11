//
//  DetailsView.swift
//  Scrumdinger
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

struct DetailsView: View {
  let scrum: DailyScrum
  
  @State private var isPresentingEditView = false
  
  var body: some View {
    List {
      Section(header: Text("Meeting Info")) {
        NavigationLink(destination: MeetingView()) {
          Label("Start Meeting", systemImage:"timer")
            .font(.headline)
          .foregroundColor(.accentColor)
        }
        HStack{
          Label("Length", systemImage: "clock")
          Spacer()
          Text("\(scrum.lengthInMinutes) minutes")
        }
        .accessibilityElement(children: .combine)
        HStack {
          Label("Theme", systemImage: "paintpalette")
          Spacer()
          Text(scrum.theme.name)
            .padding(4)
            .foregroundColor(scrum.theme.accentColor)
            .background(scrum.theme.mainColor)
            .cornerRadius(4)
        }
        .accessibilityElement(children: .combine)
      }
      Section (header: Text("Attendees")){
        ForEach(scrum.attendees) { attendee in
          Label(attendee.name, systemImage: "person")
          
        }
      }
    }
    .navigationTitle(scrum.title)
  }
}

struct DetailsView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      DetailsView(scrum: DailyScrum.sampleData[0])
    }
  }
}
