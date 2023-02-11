//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

struct DetailEditView: View {
  @State private var data = DailyScrum.Data()
  var body: some View {
    Form {
      Section(header: Text("Meeting Info")) {
        TextField("Title", text: $data.title)
        HStack {
          Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
            Text("Length")
          }
          Spacer()
          Text("\(Int(data.lengthInMinutes)) minutes")
        }
      }
      Section(header: Text("Attendees")){
        ForEach(data.attendees){ attendee in
          Text(attendee.name)
        }
      }
    }
  }
}

struct DetailEditView_Previews: PreviewProvider {
  static var previews: some View {
    DetailEditView()
  }
}
