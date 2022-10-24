//
//  PartView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/17.
//

import SwiftUI

struct PartView: View {
    
//    var partData: Parts
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("Purple"))
                .frame(width: .infinity, height: 200)
                .overlay(
                    HStack{
                    VStack{
                    HStack{
                        Text("test")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Spacer()
                    }.padding(.horizontal,30)
                        HStack{
                            Text("test")
                                .foregroundColor(Color("White"))
                            Spacer()
                        }.padding(.horizontal, 30)
                    }
                        Image("test")
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
