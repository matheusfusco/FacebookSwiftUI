//
//  GroupView.swift
//  FacebookSwiftUI
//
//  Created by Matheus Pacheco Fusco on 24/07/19.
//  Copyright © 2019 Matheus Pacheco Fusco. All rights reserved.
//
import SwiftUI

struct GroupView: View {
    var group: Group
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(group.imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(5).clipped()
            Text(group.title)
                .color(.primary)
                .lineLimit(2)
                .frame(width: 100, height: 50, alignment: .center)
                .font(.headline)
        }
        .frame(width: 110, height: 170)
    }
}
