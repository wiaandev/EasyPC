//
//  BudgetCardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/17.
//

import SwiftUI

struct BudgetCardView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("Purple"))
                .frame(width: .infinity, height: 200)
                .overlay(
                    VStack{
                    HStack{
                        Text("Low-End")
                            .foregroundColor(Color("White"))
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.horizontal,30)
                        HStack{
                            Text("Some description I want to include")
                                .foregroundColor(Color("White"))
                            Spacer()
                        }.padding(.horizontal, 30)
                    }
                )
        }
    }
}

struct BudgetCardView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetCardView()
    }
}
