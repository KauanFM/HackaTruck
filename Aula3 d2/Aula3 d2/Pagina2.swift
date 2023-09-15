//
//  Pagina2.swift
//  Aula3 d2
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Pagina2: View {
    @State var nome: String = ""
    var body: some View {
        NavigationStack {
            VStack{
                TextField("Nome", text: $nome)
                Text("Estamos percorrendo um caminho \(nome)")
                NavigationLink("Acessar Tela", destination: Pagina4(nome1: nome))
            }
        }
    }
}

struct Pagina2_Previews: PreviewProvider {
    static var previews: some View {
        Pagina2()
    }
}
