//
//  InfoView.swift
//  DanfelogarCard
//
//  Created by Daniel Felipe on 27/09/23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imgName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack{
                    Image(systemName: imgName)
                        .foregroundColor(Color(red: 0.61, green: 0.53, blue: 1.00, opacity: 1.00))
                    Text(text)
                        .foregroundColor(.black)
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello",imgName: "phone.fill")
            .previewLayout(.sizeThatFits)
        //mandatory render by component and not that page
    }
}
