//
//  EasyPCApp.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

@main
struct EasyPCApp: App {
    
    @AppStorage("onboardingComplete") var onboardingComplete = false
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {

            if(onboardingComplete){
                SplashScreenView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            } else {
                Onboarding()
            }

        }
    }
}
