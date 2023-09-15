//
//  Pagina4.swift
//  Aula3 d2
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Pagina4: View {
    @State var nome1: String
    var body: some View {
        Text("Volte \(nome1)")
    }
}

struct Pagina4_Previews: PreviewProvider {
    static var previews: some View {
        Pagina4(nome1: "")
    }
}
