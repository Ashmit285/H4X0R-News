//
//  ContentView.swift
//  H4X0R News1
//
//  Created by Ashmit Goel on 23/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


#Preview {
    ContentView()
}

//let posts = [
//    Post(id: "1", title: "hekkoezdsc"),
//    Post(id: "2", title: "asddaxz"),
//    Post(id: "3", title: "hekkoeasdzdswawdsadsxdac")
//]
