//
//  BuildCardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/15.
//

import SwiftUI

struct BuildCardView: View {
    var parts: Part
    
    var body: some View {
        VStack{
            ZStack{
                Image(parts.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .clipped()
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(
                                LinearGradient(colors:[Color("Purple"), Color("Purple")],
                                               startPoint: .top,
                                               endPoint: .center)
                            ).opacity(0.7)
                    )
                
                VStack(alignment: .leading, spacing: 10){
                    Text(parts.partType)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    Text(parts.desc)
                        .padding(20)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)

    
                    HStack{
                        Spacer()
                        Text("Select")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .padding(.top, 10)
                        
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                    }
                }
            }
            .padding(.horizontal, 7)
        }
    }
}

struct BuildCardView_Previews: PreviewProvider {
    static var previews: some View {
        BuildCardView(parts: PartData[0])
    }
}
