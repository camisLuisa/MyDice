//
//  DiceProtocol.swift
//  MyDice
//
//  Created by Camila Luisa Farias on 20/05/2023.
//

import Foundation

enum Dice: String {

	case D6

	var numberOfFaces: Int {

		switch self {
		case .D6:
			return 6
		}
	}
}
