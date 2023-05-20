//
//  ContentView.swift
//  MyDice
//
//  Created by Camila Luisa Farias on 20/05/2023.
//

import SwiftUI

struct ContentView: View {

	@State var highestDiceValue = 7
	@State var diceFace = 0
	@State var historicalDiceFaces: [Int] = []

    var body: some View {

		NavigationView {
			
			HStack {
				VStack {
					Text("Face: \(diceFace)")
					.font(.custom("AmericanTypewriter", fixedSize: 24))

					Button {

						diceFace = Int.random(in: Range(uncheckedBounds: (1, highestDiceValue)))
						historicalDiceFaces.append(diceFace)
					} label: {

						Text("Roll")
					}
					.buttonStyle(.borderedProminent)

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
