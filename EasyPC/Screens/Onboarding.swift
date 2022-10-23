//
//  OnboardingOne.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/11.
//

import SwiftUI

struct Onboarding: View {
    

    @State var onboard: [Onboard] = OnboardingData
    var body: some View {
        NavigationView{
            
        VStack{
            TabView{
                ForEach(onboard) { onboard in
                    OnboardView(onboard: onboard)
                }
            }
            .ignoresSafeArea(.all)
            .tabViewStyle(.page)
        }
        } // end of body view
        }
}

struct OnboardingOne_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
