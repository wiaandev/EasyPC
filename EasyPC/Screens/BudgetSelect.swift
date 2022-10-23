//
//  BuildView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/10.
//

import SwiftUI

struct BudgetSelect: View {
    
    @State var partData : [Parts] = PartData
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Text("Mid-End Build")
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                            .foregroundStyle(
                                LinearGradient(
                                colors: [Color("Purple"), Color("Blue")],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            )
                        Spacer()
                    }
                    HStack{
                        Text("Gaming")
                            .foregroundColor(Color("Blue"))
                            .font(.system(size: 22))
                        Spacer()
                    }
                    HStack{
//                        ToolsView()
                    }
                    HStack{
                        Text("Parts for this build")
                            .padding(.top, 40)
                            .foregroundColor(Color("Purple"))
                            .font(.system(size: 22))
                        Spacer()
                    }
                    ForEach(partData) { datum in
                        PartView(partData: datum)
                    }
//                    PartView()
//                    PartView()
//                    PartView()
                    NavigationLink(destination: BuildStartView().navigationBarBackButtonHidden(true)){
                        Button {
                            print("Clicked")
                        } label: {
                            Text("Start Build")
                                .foregroundColor(Color("White"))
                                .fontWeight(.bold)
                        }
                        .padding()
                        .background(Color("Blue"))
                        .cornerRadius(23)
                    }
                }.padding(30)
            }
        }
    }
}

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetSelect()
    }
}
