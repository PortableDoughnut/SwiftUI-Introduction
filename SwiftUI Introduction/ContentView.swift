//
//  ContentView.swift
//  SwiftUI Introduction
//
//  Created by Gwen Thelin on 1/10/25.
//

import SwiftUI

struct ContentView: View {
	@State var selectedSportIndex: Int = 0
	@State var submitSelected: Bool = false
	@State var didSubmit: Bool = false
	@State var selectedSport: String = "Golf"
	@State var submitText: String = ""
	
    var body: some View {
        VStack {
			Spacer()
			Text("Favorite Sport")
				.font(.title)
				.padding()
			Spacer()
			
			HStack {
				Button("Golf") {
					selectedSportIndex = 0
					selectedSport = "Golf"
				}.modifier(SquareButtonStyle(isSelected: selectedSportIndex == 0))
				
				Button("Football") {
					selectedSportIndex = 1
					selectedSport = "Football"
				}
				.modifier(SquareButtonStyle(isSelected: selectedSportIndex == 1))
			}
			
			HStack {
				Button("Soccer") {
					selectedSportIndex = 2
					selectedSport = "Soccer"
				}
				.modifier(SquareButtonStyle(isSelected: selectedSportIndex == 2))
				
				Button("Baseball") {
					selectedSportIndex = 3
					selectedSport = "Baseball"
				}
				.modifier(SquareButtonStyle(isSelected: selectedSportIndex == 3))
			}
			Spacer()
			
			Button("Submit") {
				Task {
					submitSelected = true
					try await Task.sleep(for: .seconds(0.25))
					submitSelected = false
				}
				
				submitText = "You choose \(selectedSport)!"
			}
			.modifier(SubmitButtonStyle(isSelected: submitSelected))
			
			Text(submitText)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
