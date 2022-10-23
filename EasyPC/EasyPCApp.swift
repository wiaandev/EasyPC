//
//  EasyPCApp.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

@main
struct EasyPCApp: App {
    
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
                
            SplashScreenView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
