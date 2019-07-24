//
//  ContentView.swift
//  FacebookSwiftUI
//
//  Created by Matheus Pacheco Fusco on 24/07/19.
//  Copyright © 2019 Matheus Pacheco Fusco. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let posts: [Post] = [Post(id: 0, username: "Hillray Cliton", text: "Eating such a great burguer!", imageName: "burger"),
                         Post(id: 1, username: "Barack Obrama", text: "This is my dog!", imageName: "post_puppy")]
    
    let groups: [Group] = [Group(id: 0, title: "Gardening", imageName: "gardening"),
                           Group(id: 1, title: "Co-Ed Hijes of Colorado", imageName: "hike"),
                           Group(id: 2, title: "Burger Lovers", imageName: "burger"),
                           Group(id: 3, title: "Gardening", imageName: "gardening"),
                           Group(id: 4, title: "Co-Ed Hijes of Colorado", imageName: "hike"),
                           Group(id: 5, title: "Burger Lovers", imageName: "burger")]
    
    var body: some View {
        NavigationView {
            List {
                VStack (alignment: .leading) {
                    Text("Trending")
                        .font(.headline)
                    ScrollView {
                        VStack (alignment: .leading) {
                            HStack {
                                ForEach(groups) { group in
                                    NavigationButton(destination: GroupDetailView(group: group)) {
                                        GroupView(group: group)
                                    }
                                }
                            }
                        }
                    }
                    .frame(height: 200)
                }
                
                ForEach(posts) { post in
                    PostView(post: post)
                }
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
