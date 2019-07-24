//
//  ContentView.swift
//  FacebookSwiftUI
//
//  Created by Matheus Pacheco Fusco on 24/07/19.
//  Copyright © 2019 Matheus Pacheco Fusco. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                Text("1")
            }
            .navigationBarTitle(Text("Groups"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
