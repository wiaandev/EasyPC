//
//  SettingsView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") var isDarkMode = false
    @State private var showGreeting = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack(spacing: 0){
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){

                            Image(systemName: "chevron.left")
                                .padding()
                                .foregroundColor(Color("Purple"))
                            Text("Go Back")
                                .foregroundColor(Color("Purple"))

                        }
                        Spacer()
                    }
                    HStack(spacing: 0){
                        LinearGradient(
                            colors: [Color("Purple"), Color("Blue")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .frame(width: .infinity, height: 100, alignment: .leading)
                        .mask(
                            Text("Settings")
                                .fontWeight(.bold)
                                .font(.system(size: 40))
                        )
                        Spacer()
                    }
                    HStack(spacing: 0){
                        Text("About The App")
                            .padding(.horizontal)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blue"))
                        Spacer()
                    }
                    HStack(spacing: 0){
                        Text("Hi! Welcome to EasyPC. This is an app that guides users on building their very own computer. Whether it be for personal use or something that you want to use for work, EasyPC can help and show you that it is not as scary and daunting as it looks.")
                            .padding()
                            .foregroundColor(Color("Purple"))
                    }
                    Divider()
                        .padding(.horizontal)
                    HStack{
                        Text("Appearance")
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(Color("Blue"))
                        Spacer()
                    }
                    HStack{
                        Toggle("Dark Mode" ,isOn: $isDarkMode)
                            .toggleStyle(SwitchToggleStyle(tint: Color("Purple")))
                            .padding(.horizontal)
                            .foregroundColor(Color("Purple"))
                            .animation(.easeInOut, value: 0.3)
                        Spacer()
                    }
                    Divider()
                    HStack{
                        Text("The Developer")
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(Color("Blue"))
                        Spacer()
                    }
                    VStack(spacing: 10){
                        Text("Hi, my name is Wiaan Duvenhage! I am a 2nd year full-stack developer student at The Open Window")
                            .padding(.horizontal)
                            .foregroundColor(Color("Purple"))
                        Text("What do you think about EasyPC? Let me know by reporting a bug on my github  page linked below")
                            .padding(.horizontal)
                            .foregroundColor(Color("Purple"))
                        
                        Image("wiaan")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70)
                            .cornerRadius(15)
                        Text("This is me")
                            .foregroundColor(Color("Purple"))
                            .padding(.bottom)
                        
                        HStack{
                            Link(destination: URL(string: "https://www.github.com/wiaandev/EasyPC")!){
                                
                            Image("github")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 45)
                                .padding(.bottom)
                            Text("wiaandev/EasyPC")
                                .padding(.bottom)
                                .foregroundColor(Color("Purple"))
                            }
                        }
                        Text("EasyPC v1.0")
                            .foregroundColor(Color("Purple"))
                        
                    }


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
