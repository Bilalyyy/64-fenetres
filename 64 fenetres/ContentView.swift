//
//  ContentView.swift
//  64 fenetres
//
//  Created by bilal on 14/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var windows : Model
    
    
    var body: some View {

        Button {
            windows.action()
        } label: {
            Text("Go!")
        }
        List(windows.selectWiner(), id: \.self) { winner in
            Text(winner)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(windows: Model())
    }
}
