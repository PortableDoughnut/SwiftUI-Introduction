//
//  ContentView.swift
//  SwiftUI Introduction
//
//  Created by Gwen Thelin on 1/10/25.
//

import SwiftUI

struct ContentView: View {
	@State var selectedSport: Int = 0
	@State var submitSelected: Bool = false
	
    var body: some View {
        VStack {
			Spacer()
			Text("Favorite Sport")
				.font(.title)
				.padding()
			Spacer()
			
			HStack {
				Button("Golf") {
					selectedSport = 0
				}.modifier(SquareButtonStyle(isSelected: selectedSport == 0))
				
				Button("Football") {
					selectedSport = 1
				}
				.modifier(SquareButtonStyle(isSelected: selectedSport == 1))
			}
			
			HStack {
				Button("Soccer") {
					selectedSport = 2
				}
				.modifier(SquareButtonStyle(isSelected: selectedSport == 2))
				
				Button("Baseball") {
					selectedSport = 3
				}
				.modifier(SquareButtonStyle(isSelected: selectedSport == 3))
			}
			Spacer()
			
			Button("Submit") {
				Task {
					submitSelected = true
					try await Task.sleep(for: .seconds(0.25))
					submitSelected = false
				}
			}
			.modifier(SubmitButtonStyle(isSelected: submitSelected))
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
