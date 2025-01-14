//
//  Sport.swift
//  SwiftUI Introduction
//
//  Created by Gwen Thelin on 1/14/25.
//

import Foundation

struct Sport: Identifiable {
	var id: UUID = .init()
	var name: String = "My Sport"
}

extension Sport {
	static var sportsToUse: Array<Sport> = [
		Sport(name: "Golf"),
		Sport(name: "Football"),
		Sport(name: "Soccer"),
		Sport(name: "Baseball")
	]
}
