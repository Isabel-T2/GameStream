//
//  ContentView.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 1/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Tener cuidado porque se crea con un Padding automático y eso no deja ver el fondo completo cuando se ignora área segura
        NavigationStack {
            ZStack {
                    Color(uiColor: UIColor(red: 19/255, green: 30/255, blue: 53/255, alpha: 2.0)).ignoresSafeArea(.all)
                    
                    VStack (spacing: 10){
                        Spacer()
                        Image("appLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250)
                            .padding(.bottom, 40.0)
                        
                        LoginAndRegisterView()
                    }
            }
        }
    }
}

struct LoginAndRegisterView: View {
    
    //Se crea una variable de Property Wraper de tipo State porque se quiere mostrar 2 pantallas en esta misma vista, no que me manden a otra vista
    
    @State var typeLogIn = true
    
    var body: some View {
        
        VStack {
            HStack(spacing: 120) {
                
                SectionButton(textButton: "Iniciar Sesión", buttonAction: {
                    typeLogIn = true
                }, isSelected: $typeLogIn)
                
                SectionButton(textButton: "Regístrate", buttonAction: {
                    typeLogIn = false
                }, isSelected: $typeLogIn.not)
                
//                Button("INICIAR SESIÓN") {
//                    typeLogIn = true
//                    print("Pantalla Inicio de Sessión")
//                }
//                //Con esta línea le indico al botón que al estar sin pulsar se mostrará blanco y que cambiará su color cuando se pulse
//                .foregroundColor(typeLogIn ? .white : .gray)
//                .bold()
//                
//                Button("REGISTRO") {
//                    typeLogIn = false
//                    print("Pantalla de Registro")
//                }
//                //Aquí se debe invertir porque es un bool, de no ser así quedaría extraño
//                .foregroundColor(typeLogIn ? .gray: .white)
//                .bold()
            }
        }
        //Con este Spacer se me subió el título bien arriba
        Spacer(minLength: 10)
        
        if typeLogIn == true {
            //Aqui debe mostrar la pantalla de Log In
            LogInView()
        } else {
            //Aqui debe mostrar la pantalla del Register
            RegisterView()
        }
    }
}

//Aqui pega el LogIn


//func logIn(){
//    print("Estoy iniciando sessión")
//}
//
//func facebookView(){
//    print("Estoy en la pantalla de Facebook")
//}
//
//func instagramView(){
//    print("Estoy en la pantalla de Instagram")
//}

#Preview {
    ContentView()
}
