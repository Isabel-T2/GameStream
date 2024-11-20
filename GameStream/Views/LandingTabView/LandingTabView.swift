//
//  LandingTabView.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 27/06/24.
//

import SwiftUI

struct LandingTabView: View {
    
    @State var tabSelecction: Int = 2
    
    var body: some View {
        
        //Necesito que mi 3 pantalla sea la que primero se muestre, para eso debo darle un identificador = .tag()
        //Hay que hacer una variable que esté ligada al tag
        TabView(selection: $tabSelecction){
            
            Text("Pantalla Perfil")
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }.tag(0)
            
            GameView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Juegos")
                }.tag(1)
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }.tag(2)
            
            Text("Pantalla Favoritos")
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoritos")
                }.tag(3)
//                .toolbarBackground(.white, for: .tabBar)
        }
        .navigationBarBackButtonHidden(true)
        .accentColor(.white)
        
    }
    
    
    
    init(){
        //Porque esto viene de las librerías de UIKit
        UITabBar.appearance().backgroundColor = UIColor(named: "TabBarColor")
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        
        print("Iniciando las vistas")
    }
}


#Preview {
    LandingTabView()
}
