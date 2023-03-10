//
//  CardView.swift
//  Scrumdinger
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

struct CardView: View {
  let scrum: DailyScrum
  var body: some View {
    VStack (alignment: .leading) {
      Text(scrum.title)
        .font(.headline)
        .padding(10)
        .padding(.bottom, -10)
        .accessibilityAddTraits(.isHeader)
      Spacer()
      HStack{
        Label("\(scrum.attendees.count)", systemImage: "person.3")
          .padding(.leading, 10)
          .accessibilityLabel("\(scrum.attendees.count) attendees")
        Spacer()
        Label("\(scrum.lengthInMinutes)", systemImage: "clock")
          .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
          .labelStyle(.trailingIcon)
          .padding(.trailing)
      }
      .font(.caption)
      .foregroundColor(scrum.theme.accentColor)
      .padding(.bottom, 10)
    }
  }
}

struct CardView_Previews: PreviewProvider {
  static var scrum = DailyScrum.sampleData[0]
  static var previews: some View {
    CardView(scrum: scrum)
      .background(scrum.theme.mainColor)
      .previewLayout(.fixed(width: 400, height: 60))
  }
}
