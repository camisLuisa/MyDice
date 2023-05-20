//
//  ContentView.swift
//  MyDice
//
//  Created by Camila Luisa Farias on 20/05/2023.
//

import SwiftUI

struct ContentView: View {

	@State private var diceFace = 0
	@State private var historicalDiceFaces: [Int] = []
	@State private var diceType: DiceType = .D6

    var body: some View {

		NavigationView {
			
			HStack {
				VStack {
					Text("Face: \(diceFace)")
					.font(.custom("AmericanTypewriter", fixedSize: 24))

					Button {

						let upperBound = diceType.numberOfFaces + 1

						diceFace = Int.random(in: Range(uncheckedBounds: (1, upperBound)))
						historicalDiceFaces.append(diceFace)
					} label: {

						Text("Roll")
					}
					.buttonStyle(.borderedProminent)

					Picker("Dice type", selection: $diceType) {

						ForEach(DiceType.allCases) { dice in
							Text(dice.name)
						}
					}

					Rectangle()
						.foregroundColor(.white)
				}
				.navigationTitle("My Dice")
				.padding()

				List {

					Section(header: Text("Historical")) {

						ForEach($historicalDiceFaces, id: \.self) {
							historicalDiceFace in
							Text("Face: \(historicalDiceFace.wrappedValue)")
						}
					}
				}
				.listStyle(.insetGrouped)
				.frame(width: 180)
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
