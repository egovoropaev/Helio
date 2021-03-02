//
//  SignViewController.swift
//  Helio
//
//  Created by Илья on 10.01.2021.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        VStack {
            Text("Helio")
                .font(Font.custom("Pacifico-Regular", size: 39))
                .foregroundColor(Color("1F314A"))
                .position(x: 141.0, y: 104.0)
        }
    }
}

struct ContentView_Previews_one: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
