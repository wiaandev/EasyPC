//
//  BuildStartView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/10.
//

import SwiftUI

struct BuildStartView: View {
    
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Text("Let's Start")
                            .font(.system(size: 45))
                            .fontWeight(.bold)
                            .foregroundStyle(
                                LinearGradient(
                                colors: [Color("Purple"), Color("Blue")],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            )
                        Spacer()
                    }
                    HStack{
                        Text("Instructions")
                            .fontWeight(.bold)
                            .font(.system(size: 22))
                            .foregroundColor(Color("Blue"))
                        Spacer()
                    }
                    ProgressView("1/7", value: downloadAmount, total: 100)
                        .onReceive(timer){ _ in
                            if downloadAmount < 100 {
                                downloadAmount += 2
                            }
                        }
                        .padding()
                    InstructionCardView()
                    NavigationLink(destination: ContentView()){
                        Button {
                            print("Clicked")
                        } label: {
                            Text("Done!")
                                .foregroundColor(Color("White"))
                                .fontWeight(.bold)
                                .frame(width: 300)
                        }
                        .padding()
                        .background(Color("Blue"))
                        .cornerRadius(23)
                    }
                }
                .padding(30)
            }
        }
    }
}

struct BuildStartView_Previews: PreviewProvider {
    static var previews: some View {
        BuildStartView()
    }
}
