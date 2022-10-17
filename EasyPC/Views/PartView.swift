//
//  PartView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/17.
//

import SwiftUI

struct PartView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("Purple"))
                .frame(width: .infinity, height: 200)
                .overlay(
                    HStack{
                    VStack{
                    HStack{
                        Text("Part Name")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Spacer()
                    }.padding(.horizontal,30)
                        HStack{
                            Text("An ATX Case would do")
                                .foregroundColor(Color("White"))
                            Spacer()
                        }.padding(.horizontal, 30)
                    }
                        Image("psu")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: .infinity, height: 150)
                    }
                )
        }
    }
    }

struct PartView_Previews: PreviewProvider {
    static var previews: some View {
        PartView()
    }
}
