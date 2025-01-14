//
//  SportButton.swift
//  SwiftUI Introduction
//
//  Created by Gwen Thelin on 1/14/25.
//

import SwiftUI
import Foundation

struct SportButton: View {
	@Binding var sport: Sport
	@Binding var selectedSportID: UUID
	@Binding var selectedSport: String
	
	var body: some View {
		Button(sport.name) {
			selectedSportID = sport.id
			selectedSport = sport.name
		}.modifier(SquareButtonStyle(isSelected: selectedSportID == sport.id))
    }
}

#Preview {
	@Previewable @State var sport: Sport = .init()
	@Previewable @State var selectedSportID: UUID = .init()
	@Previewable @State var selectedSport: String = ""
	
	SportButton(sport: $sport, selectedSportID: $selectedSportID, selectedSport: $selectedSport)
}
