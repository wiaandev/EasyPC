//
//  BudgetCardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/17.
//

import SwiftUI

struct BudgetCardView: View {
    
    var budgetData: Budget
    @State var tools: [Budget] = BudgetData
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color("Purple"))
                    .frame(width: .infinity, height: 200)
                    .overlay(
                        VStack{
                        HStack{
                            Text("\(budgetData.title)")
                                .foregroundColor(Color("White"))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Spacer()
                        }.padding(.horizontal,30)
                            HStack{
                                Text("\(budgetData.desc)")
                                    .foregroundColor(Color("White"))
                                Spacer()
                            }.padding(.horizontal, 30)
                        }
                    )
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color("PurpleDark"))
                    .frame(width: .infinity, height: 300, alignment: .leading)
                    .overlay(
                        VStack(alignment: .leading){
                            Text("Required Tools")
                                .foregroundColor(Color("White"))
                                .fontWeight(.bold)
                                .padding(.leading)
                            ForEach(tools, id: \.self.id) { i in
                                ToolPillView(tools: i)
                            }
                        }.padding([.top, .bottom])
                    )
                    .offset(y: 190)
            }

        }
    }
}

struct BudgetCardView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetCardView(budgetData: BudgetData[0])
    }
}
