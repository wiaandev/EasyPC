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
    @State var buildFilter: [buildsFilter] = buildTypes
    @State var buildInfo: [buildInfo] = buildInfoData
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
                            .font(.system(size: 16))
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 0){
                            ForEach(buildFilter) { i in
//                                Text(i.name)
                                FilterCardView(filters: i)
                            }
                        }
                        
                    }
                    
                    HStack{
                        Text("Our Builds")
                            .padding(.horizontal)
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
                    
                    NavigationLink(destination: SelectedView()){
                        VStack{
                            ForEach(buildInfo){ i in
                                BuildCardView(builds: i )
                            }
                        }
                    }
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
