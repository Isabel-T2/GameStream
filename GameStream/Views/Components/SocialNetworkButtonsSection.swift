//
//  SocialNetworkButtonsSection.swift
//  GameStream
//
//  Created by Maria Isabel Torres Torres on 9/08/24.
//

import SwiftUI

struct SocialNetworkButtonsSection: View {
    
    var message: String
    let fbButtonAction: () -> Void
    let igButtonAction: () -> Void
    
    var body: some View {
        
        Text(message)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        HStack(spacing: 10) {
            SocialNetworkButton(textButton: "Facebook", buttonAction: fbButtonAction)
            SocialNetworkButton(textButton: "Instagram", buttonAction: igButtonAction)
        }
    }
}

#Preview {
    ZStack {
        Color(uiColor: UIColor(red: 19/255, green: 30/255, blue: 53/255, alpha: 2.0)).ignoresSafeArea(.all)
        VStack {
            SocialNetworkButtonsSection(message: "mensaje prueba",
                                        fbButtonAction: {},
                                        igButtonAction: {})
        }
    }
}
