//
//  FilterCardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/15.
//

import SwiftUI

struct FilterCardView: View {
    
    var filters: Part
    
    var body: some View {
        VStack{
            Button{
                
            } label: {
                VStack{
                    Image(systemName: filters.icon)
                    Text(filters.partType)
                }
                
            }
            .lineLimit(nil)
            .frame(width: .infinity, height: 25)
            .padding()
            .foregroundColor(Color("Purple"))
            .overlay(
                RoundedRectangle(cornerRadius: 10).stroke(Color("Purple"), lineWidth: 1))
            .padding(.horizontal)
        }
    }
}

struct FilterCardView_Previews: PreviewProvider {
    static var previews: some View {
        FilterCardView(filters: PartData[0])
    }
}
