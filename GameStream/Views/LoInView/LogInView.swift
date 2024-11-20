//
//  LogInView.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 29/05/24.

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    @State var isHomeActive = false
    
    var body: some View {
            //Aquí voy a implementar el ScrollView pensando en los celulares de pantalla pequeña
            ScrollView {
                //alineación a la izquierda
                VStack(alignment: .leading) {
                    
                   TitleTextField(title: "Correo Electrónico", placeHolder: "ejemplo@gmail.com", value: $email)
                    
                    TitleTextField(title: "Contraseña", placeHolder: "Escribe tu contraseña", isSecureTextField: true, value: $password)
                    
                    Text("Olvidaste tu contraseña")
                        .foregroundStyle(.darkCian)
                        .font(.footnote)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .trailing)
                        .padding(.bottom,30)
                    
                    BigButton(textButton: "Inicio de Sesión", buttonAction: {
                        isHomeActive = true
                    })
                    
                    SocialNetworkButtonsSection(message: "Inicia Sesión con redes sociales",
                                                fbButtonAction: {},
                                                igButtonAction: {})
                    
                }
                //Le estoy dando tamaño al VStack
                .padding(.horizontal, 30.0)
                .navigationDestination(isPresented: $isHomeActive) {
                    LandingTabView()
                }
            }
        }
    }

#Preview {
    ZStack {
        Color(uiColor: UIColor(red: 19/255, green: 30/255, blue: 53/255, alpha: 2.0)).ignoresSafeArea(.all)
        LogInView()
    }
}
