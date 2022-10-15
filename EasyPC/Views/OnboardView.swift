//
//  OnboardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/15.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea(.all)
                .foregroundColor(Color("Purple"))
            VStack(spacing: 0){
                HStack{
                    Text("Hey!")
                        .padding(.horizontal, 40)
                        .foregroundColor(Color("White"))
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    Spacer()
                } // end of HStack
                HStack{
                    Text("Welcome to EasyPC")
                        .padding([.horizontal, .bottom], 40)
                        .foregroundColor(Color("White"))
                        .font(.system(size: 20))
                    Spacer()
                } // end of Hstack
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 320, height: 300)
                    .foregroundColor(Color("PurpleDark"))
                    .overlay(
                        VStack{
                            RoundedRectangle(cornerRadius: 23)
                                .frame(width: 220, height: 50)
                                .foregroundColor(Color("PurpleLight"))
                            ZStack{
                                RoundedRectangle(cornerRadius: 23)
                                    .frame(width: 220, height: 150)
                                    .foregroundColor(Color("PurpleLight"))
                                
                                RoundedRectangle(cornerRadius: 23)
                                    .frame(width: 75, height: 25)
                                    .foregroundColor(Color("Blue"))
                            } // end of ZStack

                        }//end of VStack

                    )
                HStack{
                    Text("Select a build by tapping on one of the cards.")
                        .padding()
                        .foregroundColor(Color("White"))
                }//end of HStack
                Button{
                    
                } label: {
                    Text("Next")
                        .foregroundColor(Color("White"))
                        .padding()
                        .background(Color("Blue"))
                        .clipShape(Capsule())
                }
            } // end of parent VStack
            
        } // end of parent ZStack
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
