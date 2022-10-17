//
//  InstructionCardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/18.
//

import SwiftUI

struct InstructionCardView: View {
    var body: some View {
        VStack(spacing: 0){
            Text("RAM")
                .font(.system(size: 45))
                .foregroundColor(Color("Purple"))
                .fontWeight(.bold)
            RoundedRectangle(cornerRadius: 23)
                .foregroundColor(Color("Purple"))
                .overlay(
                    VStack(spacing: 20){
                        Text("1. Take motherboard out of box and packaging bag and place it on top of packaging bag to reduce static electricity.")
                            .foregroundColor(Color("White"))
                        Text("2. Take motherboard out of box and packaging bag and place it on top of packaging bag to reduce static electricity.")
                            .foregroundColor(Color("White"))
                        Text("3. Take motherboard out of box and packaging bag and place it on top of packaging bag to reduce static electricity.")
                            .foregroundColor(Color("White"))
                        Text("4. Take motherboard out of box and packaging bag and place it on top of packaging bag to reduce static electricity.")
                            .foregroundColor(Color("White"))
                        Text("5. Take motherboard out of box and packaging bag and place it on top of packaging bag to reduce static electricity.")
                            .foregroundColor(Color("White"))
                    }
                        .padding()
                )
                .frame(width: .infinity, height: 500)
        }
    }
}

struct InstructionCardView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionCardView()
    }
}
