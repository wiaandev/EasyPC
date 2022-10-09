//
//  SettingsView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .padding()
                    Text("Go Back")
                    Spacer()
                }
                HStack{
                    Text("Settings")
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
