//
//  ContentView.swift
//  MyDice
//
//  Created by Camila Luisa Farias on 20/05/2023.
//

import SwiftUI

struct ContentView: View {

	@State var highestDiceValue = 6
	@State var diceFace = 0

    var body: some View {
        VStack {
            Text("Face: \(diceFace)")

			Button {

				diceFace = Int.random(in: Range(uncheckedBounds: (1, highestDiceValue)))
			} label: {
				Text("Roll")
			}
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
