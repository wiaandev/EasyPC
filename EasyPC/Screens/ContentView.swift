//
//  ContentView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
    
    var filteredPart: [Part] {
        if(searchText.isEmpty) {
            return PartData
        } else {
            return PartData.filter{ $0.key.contains(searchText) } // filtering data to see if data contains the search
        }
    }
    
    @State private var searchText = ""
    @State var navigationBarBackButton = true
    @AppStorage("onboardingComplete") var onboardingComplete = false
    @State var partFilter: [Part] = PartData
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
                            .font(Font.custom("NunitoSans-Italic", size: 17))
                            .foregroundColor(Color("Purple"))
                            .padding(.horizontal)
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 0){
                            ForEach(partFilter) { i in
                                FilterCardView(filters: i)
                                    .onTapGesture {
                                        self.partFilter = filterByKey(key: "cpu")
                                    }
                            }
                        }
                        
                    }
                    
                    HStack{
                        Text("Our Builds")
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .font(.system(size: 40))
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
                    VStack{
                        ForEach(searchText.isEmpty ? partFilter : filteredPart){ i in
                            NavigationLink(destination: SelectedView(parts: i).navigationBarBackButtonHidden(true)){
                                BuildCardView(parts: i)
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
}
