//
//  BuildView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/10.
//

import SwiftUI

struct BudgetSelect: View {
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
                                    Text("125 mm Star-Point Screwdriver")
                                        .foregroundColor(Color("White"))
                                    Text("125 mm Star-Point Screwdriver")
                                        .foregroundColor(Color("White"))
                                    Text("125 mm Star-Point Screwdriver")
                                        .foregroundColor(Color("White"))
                                    
                                    Text("125 mm Star-Point Screwdriver")
                                        .foregroundColor(Color("White"))
                                    Text("125 mm Star-Point Screwdriver")
                                        .foregroundColor(Color("White"))
                                }
                                .padding()
                            )
                    }
                    HStack{
                        Text("Parts for this build")
                            .padding(.top, 40)
                            .foregroundColor(Color("Purple"))
                            .font(.system(size: 22))
                        Spacer()
                    }
                    PartView()
                    PartView()
                    PartView()
                    NavigationLink(destination: BuildStartView()){
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
