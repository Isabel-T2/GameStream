//
//  HomeView.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 1/07/24.
//

import SwiftUI
import AVKit

struct HomeView: View {
    //Aqui debo tener un logotipo, una barra de búsqueda que cambiará su color
    
    @State var searchText = ""
    var body: some View {
       
        ZStack (alignment: .top) {
                Color("Marine").ignoresSafeArea(.all)
            
            VStack {
                Image("appLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.vertical, 11.0)
                
                HStack{
                    //Aquí voy a programar la barra de búsqueda
                    Button(action: {searchFunction()/* Método de búsqueda  */}, label: {
                        Image(systemName: "magnifyingglass")
                        //En caso de que la búsqueda esté vacío será rojo, de lo contrario será Dark-Cian
                            .foregroundColor(searchText.isEmpty ? Color(.red) : Color("Dark-Cian"))
                    })
                    
                    //                    ZStack(alignment: .leading){
                    //                        if searchText.isEmpty {
                    //                            Text("Buscar un video")
                    //                                .foregroundStyle(Color(red: 174/255, green: 177/255, blue: 185/255))
                    //                        }
                    //Anteriormente se tenía que crear el Binding dentro de un ZStack
                    TextField(text: $searchText,
                              label: {
                        Text("Buscar un video")
                            .foregroundStyle(Color(red: 174/255, green: 177/255, blue: 185/255))
                    })
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    
                }
                .padding([.top, .leading, .bottom],8.0)
                .background(Color("Blue-Gray"))
                .clipShape(Capsule())
                
                ScrollView(.vertical) {
                    HomeSubModule()
                }.scrollIndicators(.hidden)
            }
            .padding(.horizontal)
        }
    }
    func searchFunction() {
        print("El usuario está buscando \(searchText)")
    }
}


#Preview {
    HomeView()
}
