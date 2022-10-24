//
//  SelectedView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/10.
//

import SwiftUI

struct SelectedView: View {
    
    //    @State var budget: [Budget] = BudgetData
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Text("Gaming")
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                            .foregroundStyle(                    LinearGradient(
                                colors: [Color("Purple"), Color("Blue")],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            )
                        Spacer()
                    }
                    NavigationLink(destination: BudgetSelect().navigationBarBackButtonHidden(true)){
                        VStack(spacing: 200){
                            //                        ForEach(budget) { i in
                            //                            BudgetCardView(budgetData: i)
                            //                        }
                            //                    }
                        }
                    }
                    .padding(30)
                }
            }
        }
    }
    
    struct SelectedView_Previews: PreviewProvider {
        static var previews: some View {
            SelectedView()
        }
    }
}
