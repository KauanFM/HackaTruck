//
//  Search.swift
//  Aula3
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Search: View {
    @State var buscar: String = ""
    var body: some View {
        VStack {
            VStack {
                Text("Buscar")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                TextField("Buscar", text: $buscar)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.gray)
                    .frame(width: 380)
                    .cornerRadius(25)
            }
            Spacer()
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
