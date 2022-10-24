//
//  Onboard.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/15.
//

import SwiftUI

struct Onboard: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var description: String
    var image: String
}

// Sample Model Screens
var boardingScreens: [Onboard] = [
    Onboard(title: "Hey!", subTitle: "Welcome to EasyPC", description: "Select a part you would like to install by clicking the card", image: "onboard1"),
    Onboard(title: "Tools", subTitle: "You need them to build", description: "Read the required tools of th part you would like to install and click 'next'", image: "onboard2"),
    Onboard(title: "Read Instructions", subTitle: "it's as easy as PC", description: "Follow the on-screen instructions to understand how to assemle and install this part into your computer", image: "onboard3"),
    Onboard(title: "Filtering Parts", subTitle: "Quick and easy", description: "Filtering parts by clicking on the buttons on the top of the screen", image: "onboard4")
]
