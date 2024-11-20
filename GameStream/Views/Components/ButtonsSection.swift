//
//  ButtonsSection.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 5/06/24.
//

import SwiftUI

struct BigButton: View {
    
    let textButton: String
    let buttonAction: () -> Void
    
    var body: some View {
        
        Button(action: buttonAction, label: {
            Text(textButton)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
            //Al rectángulo se le da un radio, el stroke que es el borde con color ya con tamaño, shadow para el reflejo
                .overlay(RoundedRectangle(cornerRadius: 15.0).stroke(Color(.darkCian)).shadow(color: .white, radius: 3))
        }).padding(.bottom, 60)
    }
}

struct SocialNetworkButton: View {
    let textButton: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction, label: {
            Text(textButton)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                .background(Color("Blue-Gray"))
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
        })
    }
}

struct SectionButton: View {
    
    let textButton: String
    let buttonAction: () -> Void
    @Binding var isSelected: Bool
    
    var body: some View {
        
        Button(action: buttonAction, label: {
            Text(textButton)
                .foregroundColor(isSelected ? .white : .gray)
                .bold()
        })
    }
        
}

struct CategoryButton: View {
    
    var imageName: String
    
    var body: some View {
     
        Button(action: { print("Pulsé el botón de \(imageName)")}, label: {
            //Quiero que tenga una imagen sobrepuesta por eso uso el ZStack
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("Blue-Gray"))
                    .frame(width: 160, height: 90)
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 42, height: 42)
            }
        })
    }
}

struct GameButton: View {
    
    var imageName : String
    let buttonAction: () -> Void
 
    var body: some View {
        Button(action: buttonAction, label: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 125)
        })
    }
}

#Preview {
    ZStack {
        Color(uiColor: UIColor(red: 19/255, green: 30/255, blue: 53/255, alpha: 2.0)).ignoresSafeArea(.all)
        VStack {
            BigButton(textButton: "Inicio de Sesión", buttonAction: {
                print("Le di click al botón")
            })
            
            SocialNetworkButton(textButton: "Facebook", buttonAction: {})
            SectionButton(textButton: "Inicio de Sesión", buttonAction: {}, isSelected: .constant(true))
            SectionButton(textButton: "Registro", buttonAction: {}, isSelected: .constant(false))
            CategoryButton(imageName: "RPG")
            GameButton(imageName: "Assassins_Creed", buttonAction: {})
        }
        .padding(.horizontal, 47.0)
    }
}
