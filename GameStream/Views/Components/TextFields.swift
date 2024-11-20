//
//  TextFields.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 30/05/24.
//

import SwiftUI

struct TitleTextField: View {
    
    let title: String
    let placeHolder: String
    var isSecureTextField: Bool = false
    @Binding var value: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(title)
            //Para obtener el color en este caso lo agregué a los Assets y lo nombré para llamarlo fácilmente
                .foregroundStyle(Color("Dark-Cian"))
            
            ZStack(alignment: .leading) {
                
                if value.isEmpty {
                    Text(verbatim: placeHolder)
                        .foregroundStyle(.gray)
                        .font(.caption)
                    //El texto se hace más pequeño
                }
                if isSecureTextField {
                    SecureField("", text: $value)
                        .foregroundStyle(.white)
                }else{
                    //TextField de tipo Banding
                    TextField("", text: $value)
                        .foregroundStyle(.white)
                }
            }
            Divider().frame(height: 1)
                .background(Color.darkCian)
                .padding(.bottom)
        }
    }
}

#Preview {
    ZStack {
        Color(uiColor: UIColor(red: 19/255, green: 30/255, blue: 53/255, alpha: 2.0)).ignoresSafeArea(.all)
        TitleTextField(title: "Título", placeHolder: "PlaceHolder", value: .constant(""))
            .padding(.horizontal, 47.0)

    }
}
