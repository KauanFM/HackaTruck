//
//  D3.swift
//  Aula1
//
//  Created by Student14 on 31/08/23.
//

import SwiftUI

struct D3: View {
    @State var texto: String = ""
    @State var botao: Bool = false
    var body: some View {
        
        ZStack {
            Image("caminhao")
                .aspectRatio(contentMode: .fill)
                .opacity(0.1)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 250, height: 100)
                Image("truck")
                    .resizable()
                    .frame(width:250, height: 100)
            }
            
            
            VStack() {
                TextField("Seu Nome", text: $texto)
                    .padding(.horizontal, -150.0)
                    .aspectRatio(contentMode: .fit)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 0.0)
                    .offset(y: -300)
            }
            
            VStack(spacing: 700){
                Text("Bem Vindo,  \(texto)")
                    .font(.title)
                
                Button("botao") {
                    botao = true;
                }
                .alert(isPresented: $botao){
                    Alert(title: Text("Alerta"), message: Text("BOA") )
                    
                }
                
            }
            
            
            
            
        }
        
    }
}

struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
