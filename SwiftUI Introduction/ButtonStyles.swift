//
//  ButtonStyles.swift
//  SwiftUI Introduction
//
//  Created by Gwen Thelin on 1/10/25.
//

import SwiftUI

struct SquareButtonStyle: ViewModifier {
	var toUseColour: Color
	
	init(isSelected: Bool = false) {
		if isSelected {
			toUseColour = Color.green
		} else {
			toUseColour = Color.green.opacity(0.5)
		}
	}
	
	func body(content: Content) -> some View {
		content
			.font(.headline)
			.foregroundColor(.white)
			.frame(width: 100, height: 100)
			.padding()
			.background(toUseColour)
			.cornerRadius(18)
	}
}

struct SubmitButtonStyle: ViewModifier {
	var toUseColour: Color
	
	init(isSelected: Bool = false) {
		switch isSelected {
				case true:
				toUseColour = Color.blue.opacity(0.5)
			case false:
				toUseColour = Color.blue
		}
	}
	
	func body(content: Content) -> some View {
		content
			.foregroundColor(.white)
			.frame(width: 280, height: 50)
			.background(toUseColour)
			.cornerRadius(13)
			.padding(.bottom, 61)
	}
}
