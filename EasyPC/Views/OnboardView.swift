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
    
    var body: some View {
        Text("Hello World")
        
        //Custom Pager View
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
                }
            }
        }
        .background(Color("screen\(Int(getIndex().rounded() + 1))"))
        .ignoresSafeArea(.container, edges: .all)
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
