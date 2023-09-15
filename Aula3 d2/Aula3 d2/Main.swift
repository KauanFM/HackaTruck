//
//  ContentView.swift
//  Aula3 d2
//
//  Created by Student14 on 04/09/23.
//

import SwiftUI

struct Main: View {
    @State private var modo3 = false
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink("Pagina 1", destination: Pagina1())
                NavigationLink("Pagina 2", destination: Pagina2())
                
                Button (action: {
                    modo3.toggle()
                }) {
                    Text("Pagina 3")
                }
                .sheet(isPresented: $modo3, onDismiss: didDismiss) {
                    VStack {
                        Text("Edison")
                        Text("Almeida")
                        Text("hackatruck.com.br")
                        Text("edisonalmeida_")
                        
                    }
                }
            }
        }
        
    }
    func didDismiss()  {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
