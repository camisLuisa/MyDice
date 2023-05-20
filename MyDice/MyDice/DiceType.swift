//
//  DiceProtocol.swift
//  MyDice
//
//  Created by Camila Luisa Farias on 20/05/2023.
//

import Foundation

enum DiceType: CaseIterable, Identifiable {

	case D6
	case D20

	var id: Self { self }

	var numberOfFaces: Int {

		switch self {
		case .D6:
			return 6
		case .D20:
			return 20
		}
	}

	var name: String {

		switch self {
		case .D6:
			return "Cube"
		case .D20:
			return "Icosahedron"

		}
	}
}
