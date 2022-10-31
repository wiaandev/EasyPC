//
//  OnboardView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/15.
//

import SwiftUI

struct OnboardView: View {
    
//    @AppStorage("onboardingComplete") var onboardingComplete = false
    @State var offset: CGFloat = 0
    @AppStorage("onboardingComplete") var onboardingComplete = false
    var body: some View {
        //Custom Pager View
        NavigationView{
            OffsetPageTabView(offset: $offset){
                HStack(spacing: 0){
                    ForEach(boardingScreens){ screen in
                        VStack(spacing: 15){
                            Image(screen.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: getScreenBounds().width - 100, height: getScreenBounds().width - 100)
                            
                            VStack(alignment: .leading, spacing: 12){
                                
                                Text(screen.title)
                                    .font(.largeTitle.bold())
                                    .foregroundColor(.white)
                                
                                Text(screen.description)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                        .frame(width: getScreenBounds().width)
                        .frame(maxHeight: .infinity)
                        .background(Color("Purple"))
                    }
                }
            }
            .ignoresSafeArea(.container, edges: .all)
            .frame(width: .infinity, height: .infinity)
            .overlay(
                
                VStack{
                    Button {
                            offset = min(offset + getScreenBounds().width,getScreenBounds().width * 3)
                    } label: {
                        Text("Next")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .background(Color("Blue"), in: RoundedRectangle(cornerRadius: 12))
                    }
                        HStack(spacing: 8){
                            ForEach(boardingScreens.indices,id: \.self){index in
                                Circle()
                                    .fill(.white)
                                    .opacity(index == (Int(getIndex())) ? 1 : 0.4)
                                    .frame(width: 8, height: 8)
                                    .scaleEffect(index == (Int(getIndex())) ? 1.3 : 0.85)
                                    .animation(.easeInOut, value: getIndex())
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                        Button {
                            onboardingComplete = true
                        } label: {
                            Text("Get Started")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }

                }
                .padding()
                
                ,alignment: .bottom
            )
        }

    }
    
    //Changing Background Color Based on Offset
    func getIndex()->CGFloat{
        let progress = offset / getScreenBounds().width
        
        return progress
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

//Extending View to get Screen Bounds
extension View{
    func getScreenBounds()->CGRect{
        return UIScreen.main.bounds
    }
}
