//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Oscar Correa on 12/20/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    
    
    var body: some View {
        Form{
            Section(header: Text("Meeting Info")){
                TextField("title", text:$scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            
        }
    }
}

#Preview {
    DetailEditView()
}
