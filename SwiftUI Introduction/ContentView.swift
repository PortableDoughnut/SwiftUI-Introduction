//
//  ContentView.swift
//  SwiftUI Introduction
//
//  Created by Gwen Thelin on 1/10/25.
//

import SwiftUI
import Foundation

struct ContentView: View {
	@State var selectedSportID: UUID = .init()
	@State var submitSelected: Bool = false
	@State var didSubmit: Bool = false
	@State var selectedSport: String = ""
	@State var submitText: String = ""
	
	@State var sports: Array<Sport> = Sport.sportsToUse
	
    var body: some View {
        VStack {
			Spacer()
			Text("Favorite Sport")
				.font(.title)
				.padding()
			Spacer()
			
			HStack {
				SportButton(
					sport: $sports[0],
					selectedSportID: $selectedSportID,
					selectedSport: $selectedSport
				)
				
				SportButton(
					sport: $sports[1],
					selectedSportID: $selectedSportID,
					selectedSport: $selectedSport
				)
			}
			
			HStack {
				SportButton(
					sport: $sports[2],
					selectedSportID: $selectedSportID,
					selectedSport: $selectedSport
				)
				SportButton(
					sport: $sports[3],
					selectedSportID: $selectedSportID,
					selectedSport: $selectedSport
				)
			}
			Spacer()
			
			Button("Submit") {
				Task {
					submitSelected = true
					try await Task.sleep(for: .seconds(0.25))
					submitSelected = false
				}
				
				guard !selectedSport.isEmpty else { return }
				submitText = "You choose \(selectedSport)!"
			}
			.buttonStyle(SubmitButtonStyle(isSelected: submitSelected))
			
			Text(submitText)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
