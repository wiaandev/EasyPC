//
//  ContentView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State var navigationBarBackButton = true
    var buildFilter: buildsFilter = buildTypes[1]
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.vertical){
                    HStack{
                        Spacer()
                        NavigationLink(destination: SettingsView().navigationBarBackButtonHidden(true)){
                            Button(action: {
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
                        }.navigationBarBackButtonHidden(true) // end of navigationLink
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
                            .font(.custom(FontsManager.Outfit.regular, size: 16))
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 0){
                            Button{
                                
                            } label: {
                                VStack{
                                    Image(systemName: "\(buildFilter.icon)")
                                    Text("\(buildFilter.name)")
                                }
                                
                            }
                            .lineLimit(nil)
                            .frame(width: .infinity, height: 25)
                            .padding()
                            .foregroundColor(Color("Purple"))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10).stroke(Color("Purple"), lineWidth: 1))
                            .padding(.horizontal)
                            
                            Button{
                                
                            } label: {
                                VStack{
                                    Image(systemName: "\(buildFilter.icon)")
                                    Text("Gaming")
                                }
                                
                            }
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
                            .fontWeight(.bold)
                            .foregroundStyle(                    LinearGradient(
                                colors: [Color("Purple"), Color("Blue")],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            )
                        Spacer()
                    }
                    HStack{
                        Text("Choose a build type")
                            .padding(.horizontal)
                            .font(.system(size: 20))
                            .foregroundColor(Color("Blue"))
                        Spacer()
                    }
                    Divider()
                        .padding(.horizontal)
                    Image("gaming")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 250)
                        .padding(.horizontal)
                        .cornerRadius(20)
                        .foregroundColor(Color("Purple"))
                        .overlay(
                            ZStack{
                                Color("Purple")
                                    .opacity(0.7)
                                    .cornerRadius(20)
                                    .padding(.horizontal, 15)
                                VStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Gaming")
                                            .foregroundColor(Color("White"))
                                            .font(.system(size: 36))
                                            .fontWeight(.bold)
                                            .padding([.horizontal, .top])
                                        Text("Choose this build type to see everything you would need for a gaming build")
                                            .padding(25)
                                            .italic(true)
                                            .foregroundColor(Color("White"))
                                    }// end of HStack
                                    HStack{
                                        Spacer()
                                        Button("Select Build"){
                                            
                                        }
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(Color("Blue"))
                                        .clipShape(Capsule())
                                        .padding(.horizontal, 35)
                                    }
                                    
                                } // end of VStack
                                
                            }
                        )
                    
                    Image("gaming")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 250)
                        .padding(.horizontal)
                        .cornerRadius(20)
                        .foregroundColor(Color("Purple"))
                        .overlay(
                            ZStack{
                                Color("Purple")
                                    .opacity(0.7)
                                    .cornerRadius(20)
                                    .padding(.horizontal, 15)
                                VStack{
                                    VStack(alignment: .leading, spacing: 0){
                                        Text("Gaming")
                                            .foregroundColor(Color("White"))
                                            .font(.system(size: 36))
                                            .fontWeight(.bold)
                                            .padding([.horizontal, .top])
                                        Text("Choose this build type to see everything you would need for a gaming build")
                                            .padding(25)
                                            .italic(true)
                                            .foregroundColor(Color("White"))
                                    }// end of HStack
                                    HStack{
                                        Spacer()
                                        NavigationLink(destination: SelectedView()){
                                            Button("Select Build"){
                                                
                                            }
                                            .padding()
                                            .foregroundColor(.white)
                                            .background(Color("Blue"))
                                            .clipShape(Capsule())
                                            .padding(.horizontal, 35)
                                        }
                                    }
                                    
                                } // end of VStack
                                
                            }
                        )
                }
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
