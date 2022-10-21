//
//  ToolsView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/22.
//

import SwiftUI

struct ToolsView: View {
    
    var tools : Budget
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 23)
                .frame(width: .infinity, height: 250)
                .foregroundColor(Color("Purple"))
                .overlay(
                    VStack(spacing:10){
                        Text("Tools")
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                            .foregroundColor(Color("White"))
                        Spacer()
                        Text("\(tools.tools[0])")
                            .foregroundColor(Color("White"))
                        Text("\(tools.tools[1])")
                            .foregroundColor(Color("White"))
                        Text("\(tools.tools[2])")
                            .foregroundColor(Color("White"))
                        
                        Text("\(tools.tools[3])")
                            .foregroundColor(Color("White"))
                        Text("\(tools.tools[4])")
                            .foregroundColor(Color("White"))
                    }
                    .padding()
                )
        }
    }
}

struct ToolsView_Previews: PreviewProvider {
    static var previews: some View {
        ToolsView(tools: BudgetData[0])
    }
}
