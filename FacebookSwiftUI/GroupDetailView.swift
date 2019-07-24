//
//  GroupDetailView.swift
//  FacebookSwiftUI
//
//  Created by Matheus Pacheco Fusco on 24/07/19.
//  Copyright © 2019 Matheus Pacheco Fusco. All rights reserved.
//

import SwiftUI

struct GroupDetailView: View {
    var group: Group
    
    var body: some View {
        VStack {
            Image(group.imageName)
            Text(group.title)
        }
        .navigationBarTitle(Text(group.title))
    }
}
