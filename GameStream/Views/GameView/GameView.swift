//
//  GameView.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 9/08/24.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        Text("Hola desde pantalla GameView")
            .toolbar(.hidden, for: .navigationBar)
            .onAppear(
                perform: {
                    print("Primer elemento del JSON")
                    
                    print("Títutlo primer videojuego del JSON")
                }
            )
    }
}

#Preview {
    GameView()
}
