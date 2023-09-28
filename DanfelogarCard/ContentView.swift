//
//  ContentView.swift
//  DanfelogarCard
//
//  Created by Daniel Felipe on 27/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.61, green: 0.53, blue: 1.00, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("danfelogar_dev")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 3)
                    )
                
                Text("Danfelogar Dev")
                    .font(Font.custom("CroissantOne-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+57 318-528-7454", imgName: "phone.fill")
                InfoView(text: "danypolo18@hotmail.com", imgName: "envelope.fill")
                
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


