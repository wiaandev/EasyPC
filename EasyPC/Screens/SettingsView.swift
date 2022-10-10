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
                HStack(spacing: 0){
                    Image(systemName: "chevron.left")
                        .padding()
                        .foregroundColor(Color("Purple"))
                    Text("Go Back")
                        .foregroundColor(Color("Purple"))
                    Spacer()
                }
                HStack(spacing: 0){
                    Text("Settings")
                        .fontWeight(.bold)
                        .font(.system(size: 45))
                        .padding([.horizontal, .bottom])
                    Spacer()
                }
                HStack(spacing: 0){
                    Text("About The App")
                        .padding(.horizontal)
                    Spacer()
                }
                HStack(spacing: 0){
                    Text("Hi! Welcome to EasyPC. This is an app that guides users on building their very own computer. Whether it be for personal use or something that you want to use for work, EasyPC can help and show you that it is not as scary and daunting as it looks.")
                        .padding()
                }
                Divider()
                    .padding(.horizontal)
                HStack{
                    Text("Appearance")
                        .padding()
                    Spacer()
                }
                HStack{
                    Text("Light")
                        .padding()
                    Text("Dark")
                        .padding()
                    Spacer()
                }
                Divider()
                HStack{
                    Text("The Developer")
                        .padding()
                    Spacer()
                }
                VStack{
                    Text("Hi, my name is Wiaan Duvenhage! I am a 2nd year full-stack developer student at The Open Window")
                        .padding(.horizontal)
                    Spacer()
                    Text("What do you think about BuildBuddy? Let me know by reporting a bug on my github  page linked below")
                        .padding(.horizontal)
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
