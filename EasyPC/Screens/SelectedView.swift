//
//  SelectedView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/10.
//

import SwiftUI

struct SelectedView: View {
    
    @State var parts: Part
    
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
                        VStack(spacing: 20){
                            Text("Tools required for installment")
                                .foregroundColor(Color("Purple"))
                                .fontWeight(.bold)
                            ForEach(parts.tools, id: \.self){i in
                                Text(i)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color("Purple"))
                                    .clipShape(Capsule())
                            }
                            Divider()
                                .background(Color("PurpleDark"))
                            Text("What is a \(parts.partType)?")
                                .font(.largeTitle)
                                .padding(.top,30)
                                .fontWeight(.bold)
                                .foregroundColor(Color("Purple"))
                            Text("\(parts.longDesc)")
                                .padding([.bottom, .leading, .trailing],30)
                                .foregroundColor(Color("Purple"))
                            Divider()
                                .background(Color("PurpleDark"))
                        }
                    }
                    VStack(spacing: 0){
                        Stopwatch()
                        RoundedRectangle(cornerRadius: 23)
                            .foregroundColor(Color("Purple"))
                            .overlay(
                                VStack(alignment: .leading, spacing: 20){
                                    Text("Instructions for \(parts.partType) Installation")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("White"))
                                    ForEach(parts.instructions, id: \.self){ i in
                                        Text(i)
                                            .foregroundColor(Color("White"))
                                    }
                                }
                                    .padding()
                            )
                            .aspectRatio(contentMode: .fit)
                            .padding()
                       Spacer()
                    }
                        Button{
                            
                        } label: {
                            Text("Done")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical, 20)
                                .frame(maxWidth: .infinity)
                                .background(Color("Blue"), in: RoundedRectangle(cornerRadius: 12))
                        }
                        .padding()
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
