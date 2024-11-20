//
//  RegisterView.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 29/05/24.
//
import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        ScrollView {
            
            Text("Elije una foto de perfil")
                .foregroundStyle(.white)
                .font(.subheadline)
            
            Text("Puedes cambiar o elegir más adelante")
                .foregroundStyle(.gray)
                .font(.footnote)
                .padding(.bottom)
            
            Spacer()
           
            Button(action: takeApicture, label: {
                ZStack{
                    Image("PerfilEjemplo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image(systemName: "camera")
                        .foregroundColor(.white)
                }
            })
            
            TitleTextField(title: "Correo Electrónico*", placeHolder: "ejemplo@gmail.com", value: $email)
            
            TitleTextField(title: "Contraseña*", placeHolder: "Escriba su contraseña", value: $password)
            
            TitleTextField(title: "Confirmar Contraseña*", placeHolder: "Confirme su contraseña", isSecureTextField: true, value: $confirmPassword)
            
            BigButton(textButton: "Regístrate", buttonAction: {})
            
            SocialNetworkButtonsSection(message: "Regístrate con redes sociales",
                                        fbButtonAction: {},
                                        igButtonAction: {})
        }
            //Le estoy dando tamaño al VStack
            .padding(.horizontal, 47.0)
    }
}

func takeApicture() {
    print("Voy a tomar una foto")
}

#Preview {
    ZStack {
        Color(uiColor: UIColor(red: 19/255, green: 30/255, blue: 53/255, alpha: 2.0)).ignoresSafeArea(.all)
        RegisterView()
    }
}
