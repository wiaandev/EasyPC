//
//  ContentView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        VStack{
            ScrollView(.vertical){
                HStack{
                    Spacer()
                    NavigationLink(destination: SettingsView()){
                        Button(action: {
                            print("button pressed")
                        }){
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                        }
                        .frame(width: 25, height: 25, alignment: .center)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("Purple"))
                        .clipShape(Rectangle())
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                }
                HStack{
                    TextField("Search builds here", text: $searchText)
                        .padding(35)
                        .overlay(RoundedRectangle(cornerRadius:     15).stroke(Color("Purple"))
                            .padding()
                        )
                }
                HStack{
                    Text("Quick Filter")
                        .foregroundColor(Color("Purple"))
                        .padding(.horizontal)
                    Spacer()
                }
                ScrollView(.horizontal){
                    HStack{
                        Button("Gaming", action: {
                            print("Hello World")
                        })
                        .frame(width: 75, height: 25)
                        .padding()
                        .foregroundColor(Color("Purple"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10).stroke(Color("Purple"), lineWidth: 1))
                        .padding(.horizontal)
                        Button("Gaming", action: {
                            print("Hello World")
                        })
                        .frame(width: 75, height: 25)
                        .padding()
                        .foregroundColor(Color("Purple"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10).stroke(Color("Purple"), lineWidth: 1))
                        .padding(.horizontal)
                        Button("Gaming", action: {
                            print("Hello World")
                        })
                        .frame(width: 75, height: 25)
                        .padding()
                        .foregroundColor(Color("Purple"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10).stroke(Color("Purple"), lineWidth: 1))
                        .padding(.horizontal)
                    }

                }
                
                HStack{
                    Text("Our Builds")
                        .padding(.horizontal)
                        .foregroundColor(Color("Purple"))
                        .font(.system(size: 40))
                    Spacer()
                }
                HStack{
                    Text("Choose a build type")
                        .padding(.horizontal)
                        .font(.system(size: 20))
                        .foregroundColor(Color("Purple"))
                    Spacer()
                }
                Divider()
                    .padding(.horizontal)
                Rectangle()
                    .padding(.horizontal)
                    .frame(width: .infinity, height: 200, alignment: .center)
                    .cornerRadius(35)
                    .foregroundColor(Color("Purple"))
                    .overlay(
                        HStack{
                            Button("Select Build", action: {
                                
                            })
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(Capsule())
                        }
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
