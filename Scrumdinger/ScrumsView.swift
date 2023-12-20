//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Oscar Correa on 12/18/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            
                List(scrums){ scrum in
                    NavigationLink(destination:DetailView(scrum: scrum)){
                        CardView(scrum: scrum)
                            
                }.listRowBackground(scrum.theme.mainColor)
            }
                .navigationTitle("Daily Scrums")
                .toolbar(){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        Image(systemName: "plus")
                        
                    }
                    .accessibilityLabel("New Scrum")
                }
        }
        
    }
}

#Preview {
    
    ScrumsView(scrums: DailyScrum.sampleData)
}
