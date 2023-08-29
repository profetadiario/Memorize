//
//  ContentView.swift
//  Memorize
//
//  Created by Enrique on 24/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
        CardView(isFacedUp: true)
        CardView()
        CardView()
        CardView(isFacedUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    @State var isFacedUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFacedUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 3)
                Text("👻").font(.largeTitle)
            }
            else {
                base
            }
        }
        .onTapGesture {
            isFacedUp.toggle()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
