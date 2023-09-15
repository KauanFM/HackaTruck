//
//  ContentView.swift
//  Aula5
//
//  Created by Student14 on 06/09/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    var nome: String
    let coordenada: CLLocationCoordinate2D
    let flag: String
    let descricao: String
}



struct ContentView: View {
    @State var botao = false
    @State var sheet = false
    @State var nomesPaises : Location = Location(nome: "Brazil", coordenada: CLLocationCoordinate2D(latitude: -13.437286694285849, longitude: -50.46255872201973), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", descricao: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba.")
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -13.437286694285849, longitude: -50.46255872201973) , span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    @State var paises : [Location] = [
        
        Location(nome: "Brazil", coordenada: CLLocationCoordinate2D(latitude: -13.437286694285849, longitude: -50.46255872201973), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", descricao: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
        Location(nome: "Canadá", coordenada: CLLocationCoordinate2D(latitude: 59.73656984721078,  longitude: -107.03346659183435), flag: "https://s3.static.brasilescola.uol.com.br/be/2022/10/bandeira-do-canada.jpg", descricao: "O Canadá é um país norte-americano que se estende desde os EUA, no sul, até o Círculo Polar Ártico, no norte. Entre suas grandes cidades estão a gigantesca Toronto; Vancouver, centro cinematográfico da costa oeste; Montreal e Québec City, que falam francês; e a capital, Ottawa. As vastas regiões de natureza selvagem do Canadá compreendem o Parque Nacional de Banff, repleto de lagos nas Montanhas Rochosas. Abriga também as Cataratas do Niágara, um famoso conjunto de enormes cachoeiras."),
        Location(nome: "Nicarágua", coordenada: CLLocationCoordinate2D(latitude: 13.558793758229715, longitude: -84.7105453051927), flag: "https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Nicaragua.svg", descricao: "A Nicarágua, situada entre o Oceano Pacífico e o Mar do Caribe, é um país da América Central conhecido pela impressionante paisagem que compreende lagos, vulcões e praias. O vasto lago Manágua e o famoso estratovulcão Momotombo ficam ao norte da capital Manágua. Ao sul está localizada Granada, conhecida pela arquitetura colonial espanhola e por um arquipélago de ilhotas navegáveis e ricas em pássaros tropicais."),
        Location(nome: "Ucrânia", coordenada: CLLocationCoordinate2D(latitude: 49.481838104195646, longitude: 31.616134889242748 ), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/290px-Flag_of_Ukraine.svg.png", descricao: "A Ucrânia é um grande país da Europa de Leste conhecido pelas suas igrejas ortodoxas, pela costa do Mar Negro e pelas montanhas arborizadas. A sua capital, Kiev, alberga a Catedral de Santa Sofia com a sua cúpula dourada, mosaicos do século XI e frescos. Sobre o rio Dnieper encontra-se o complexo de mosteiros de Kiev-Pechersk, um local de peregrinação cristão onde se encontram relíquias de túmulos citas e catacumbas com monges ortodoxos mumificados."),
        Location(nome: "Argélia", coordenada: CLLocationCoordinate2D(latitude: 27.373068741736926, longitude: 2.6801112871556767), flag: "https://upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Algeria.svg", descricao: "A Argélia é um país da África do Norte com uma linha costeira mediterrânica, cujo interior se encontra no deserto do Saara. Muitos impérios deixaram legados neste local, por exemplo, as antigas ruínas romanas em Tipasa, à beira-mar. Na capital, Argel, os pontos de referência otomanos, como a mesquita Ketchaoua de aproximadamente 1612, preenchem o bairro Casbah com as vielas e escadarias estreitas na encosta. A basílica neobizantina da cidade, Notre Dame d’Afrique, data do domínio colonial francês."),
        Location(nome: "Rússia", coordenada: CLLocationCoordinate2D(latitude: 62.9193343031111,  longitude: 99.45181757764809), flag: "https://upload.wikimedia.org/wikipedia/commons/f/f3/Flag_of_Russia.svg", descricao: "A Rússia é o maior país em extensão territorial do mundo, portanto, possui uma geografia diversificada. Ela está localizada entre a Ásia e a Europa. O território russo é banhado pelos oceanos Pacífico e Glacial Ártico. Além disso, a Rússia é banhada pelos mares Báltico, Negro e Cáspio."),
        Location(nome: "Antárdida", coordenada: CLLocationCoordinate2D(latitude: -80.75060545826882, longitude: 23.57732795512318 ), flag: "https://s5.static.brasilescola.uol.com.br/be/2023/03/bandeira-antartida1.jpeg", descricao: "Antártida ou Antártica é o mais meridional e o segundo menor dos continentes, com uma superfície de 14 milhões de quilômetros quadrados."),
        
        
    ]
    
    @State var aux: Location = Location(nome: "Brazil", coordenada: CLLocationCoordinate2D(latitude: -13.437286694285849, longitude: -50.46255872201973), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", descricao: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba.")
    
    var body: some View {
        ZStack {
            VStack{
                Text("World Map")
                    .font(.largeTitle)
                    .bold()
                Text("\(nomesPaises.nome)")
                
                Map(coordinateRegion: $region, annotationItems: paises){ p in
                    MapAnnotation(coordinate: p.coordenada) {
                        Circle()
                            .frame(width: 20, height: 20)
                            .onTapGesture() {
                                aux = p
                            sheet.toggle()
                              
                        
                        }
                        .sheet(isPresented: $sheet) {
                            Text(aux.nome)
                            AsyncImage(url: URL(string: aux.flag)) { Image in
                                Image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 200, height: 140)
                            
                            Text(aux.descricao)
                        }
                    }
                }
                    .frame(width: 400, height: 650)
                
                ScrollView(.horizontal ,showsIndicators: false){
                    HStack{
                        ForEach(paises)  {
                            Location in
                            Button("\(Location.nome)"){
                                botao.toggle()
                                region.center = Location.coordenada
                                region.span = MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
                                nomesPaises.nome = Location.nome
                                
                                
                                
                            }.foregroundColor(.white)
                                .frame(width: 90, height: 32)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(0.9)
                        }
                    }
                    
                }
                
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
