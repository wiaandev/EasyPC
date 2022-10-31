//
//  InstructionView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/30.
//

import SwiftUI

struct InstructionView: View {
    var parts: Part
    var body: some View {
        VStack{
            
        ForEach(parts.instructions, id: \.self){i in
            Text(i)
        }
        }
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView(parts: PartData[0])
    }
}
