//
//  HomeSubModule.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 9/08/24.
//

import SwiftUI
import AVKit

struct HomeSubModule: View {
    //    //Tengo que agregar los assets
    //
    @State var url = "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"
    @State var isPlayerActive = false
    let urlVideos =  ["https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"]
    
    var body: some View {
        
        VStack {
            Text("Los más populares")
                .font(.title)
                .foregroundStyle(.white)
                .bold()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                .padding(.vertical)
            
            
            Button(action: {
                url = urlVideos[0]
                print("URL: \(url)")
                isPlayerActive = true
            }, label: {
                
                ZStack {
                    VStack(spacing: 0) {
                        Image("The Witcher 3")
                            .resizable()
                            .scaledToFit()
                        Text("The Witcher 3")
                            .foregroundStyle(.white)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                            .background(Color("Blue-Gray"))
                    }
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            })
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .center)
            
            Text("Categorías Sugeridas para ti")
                .font(.title3)
                .foregroundStyle(Color(.white))
                .bold()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                .padding(.top)
            
            //Esto será para hacer el Carrusel de imágenes
            ScrollView(.horizontal) {
                
                HStack{
                    CategoryButton(imageName: "FPS")
                    CategoryButton(imageName: "RPG")
                    CategoryButton(imageName: "OpenWorld")
                }
            }.scrollIndicators(.hidden)
        
            Text("Recomendados para ti")
                .font(.title3)
                .foregroundStyle(Color(.white))
                .bold()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack{
                    GameButton(imageName: "Assassins_Creed", buttonAction: {
                        url = urlVideos[1]
                        print("URL: \(url)")
                        isPlayerActive = true
                    })
                    
                    GameButton(imageName: "LastOfUs", buttonAction: {
                        url = urlVideos[2]
                        print("URL: \(url)")
                        isPlayerActive = true
                    })
//                    Button(action: {
//                        url = urlVideos[1]
//                        print("URL: \(url)")
//                        isPlayerActive = true
//                    }, label: {
//                        Image("Assassins_Creed")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 240, height: 135)
//                    })
                }
                
            }.scrollIndicators(.hidden)
            
            Text("Videos que podrían gustarte")
                .font(.title3)
                .foregroundStyle(Color(.white))
                .bold()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack{
                    GameButton(imageName: "Spiderman", buttonAction: {
                        url = urlVideos[3]
                        print("URL: \(url)")
                        isPlayerActive = true
                    })
                    
                    GameButton(imageName: "Uncharted4", buttonAction: {
                        url = urlVideos[4]
                        print("URL: \(url)")
                        isPlayerActive = true
                    })
                }
            }.scrollIndicators(.hidden)
        }
        .navigationDestination(isPresented: $isPlayerActive) {
            VideoPlayer(player: AVPlayer(url: URL(string: url)!))
                .frame(width: 400, height: 300)
        }
    }
}

#Preview {
    ZStack (alignment: .top) {
        Color("Marine").ignoresSafeArea(.all)
        HomeSubModule()
    }
}
