//
//  SplashScreenView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    var body: some View {
        if isActive {
//            onboardingComplete ? ContentView() : Onboarding()
            if(onboardingComplete) {
                ContentView()
            } else {
                Onboarding()
            }
        } else {
            VStack {
                HStack(spacing: 20){
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                    
                    VStack(alignment: .leading, spacing: 0){
                        LinearGradient(
                            colors: [Color("Purple"), Color("Blue")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .frame(width: 143, height: 40)
                        .mask(
                            Text("EasyPC")
                                .font(Font.custom("Outfit-Bold", size: 35))
                                .font(.system(size: 40))
                        )
                        Text("PC Building Made Simple")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blue"))
                    }
                }
                .scaleEffect(size)
                .onAppear {
                    onboardingComplete = false
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.size = 1.00
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
