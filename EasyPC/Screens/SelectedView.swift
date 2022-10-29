//
//  SelectedView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/10.
//

import SwiftUI

struct SelectedView: View {
    
    var parts: Part
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack{
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                            
                            Image(systemName: "chevron.left")
                                .padding()
                                .foregroundColor(Color("Purple"))
                            Text("Go Back")
                                .foregroundColor(Color("Purple"))
                            
                        }
                        Spacer()
                    }
                    HStack{
                        Text("\(parts.partType)")
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                            .foregroundStyle(                    LinearGradient(
                                colors: [Color("Purple"), Color("Blue")],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            )
                            .padding()
                        Spacer()
                    }
                    HStack{
                        Text("something cool")
                        NavigationLink(destination: BudgetSelect().navigationBarBackButtonHidden(true)){
                            VStack(spacing: 200){
                                ForEach(parts.tools, id: \.self){i in
                                    Text(i)
                                }
                            }
                        }
                        .padding(30)
                    }
                }
            }
        }
    }
    
}
        
    struct SelectedView_Previews: PreviewProvider {
        static var previews: some View {
            SelectedView(parts: PartData[0])
        }
    }
