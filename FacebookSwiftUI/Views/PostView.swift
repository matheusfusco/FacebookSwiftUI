//
//  PostView.swift
//  FacebookSwiftUI
//
//  Created by Matheus Pacheco Fusco on 24/07/19.
//  Copyright © 2019 Matheus Pacheco Fusco. All rights reserved.
//

import SwiftUI

struct PostView: View {
    var post: Post
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image("burger")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                    .clipped()
                
                VStack (alignment: .leading, spacing: 4) {
                    Text(post.username)
                        .font(.headline)
                    
                    Text("Posted X time ago")
                        .font(.subheadline)
                    }
                    .padding(.leading, 8)
                }
                .padding(.leading, 16)
                .padding(.top, 16)
            
            Text(post.text)
                .lineLimit(nil)
                .padding(.leading, 16)
                .padding(.trailing, 32)
            
            Image(post.imageName)
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            }
            .padding(.leading, -20)
            .padding(.bottom, -8)
    }
}
