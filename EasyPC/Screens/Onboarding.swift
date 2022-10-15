//
//  OnboardingOne.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/11.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack{
            TabView{
                OnboardView()
                OnboardView()
                OnboardView()
            }
            .ignoresSafeArea(.all)
            .tabViewStyle(.page)
        }
        } // end of body view
        } // end of struct

struct OnboardingOne_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
