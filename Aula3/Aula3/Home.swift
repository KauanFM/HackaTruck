//
//  Home.swift
//  Aula3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(1...15, id: \.self) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
