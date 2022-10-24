//
//  ToolPillView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/22.
//

import SwiftUI

struct ToolPillView: View {
    
//    var tools: Budget
    
    var body: some View {
        VStack{
//            ForEach(tools.tools, id: \.self) { i in
//                Text(i)
//            }
            Text("test")
                .foregroundColor(Color("White"))
                .padding()
                .background(Capsule())
                .foregroundColor(Color("PurpleLight"))
        }

    }
}

struct ToolPillView_Previews: PreviewProvider {
    static var previews: some View {
        ToolPillView()
    }
}
