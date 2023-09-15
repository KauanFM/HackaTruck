//
//  ContentView.swift
//  Aula3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Main: View {
    var item: String = "Item"
    var body: some View {
        VStack{
            TabView{
                Home()
                    .badge(2)
                    .tabItem{
                        Label("Home", systemImage:"doc.text.image")
                    }
                Search()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                Photos()
                    .tabItem {
                        Label("Photos", systemImage: "photo")
                    }
                Messeges()
                    .tabItem {
                        Label("Messeges", systemImage: "message")
                    }
                Profile()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}

