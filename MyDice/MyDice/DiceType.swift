//
//  DiceProtocol.swift
//  MyDice
//
//  Created by Camila Luisa Farias on 20/05/2023.
//

import Foundation

enum DiceType: CaseIterable, Identifiable {

	case D4
	case D6
	case D8
	case D10
	case D12
	case D20

	var id: Self { self }

	var numberOfFaces: Int {

		switch self {
		case .D4:
			return 4
		case .D6:
			return 6
		case .D8:
			return 8
		case .D10:
			return 10
		case .D12:
			return 12
		case .D20:
			return 20
		}
	}

	var name: String {

		switch self {
		case .D4:
			return "Tetrahedron"
		case .D6:
			return "Cube"
		case .D8:
			return "Octahedron"
		case .D10:
			return "Pentagonal trapezohedron"
		case .D12:
			return "Dodecahedron"
		case .D20:
			return "Icosahedron"
		}
	}
}
