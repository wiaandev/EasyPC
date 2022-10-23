//
//  buildTypes.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/11.
//

import SwiftUI

let buildTypes: [buildsFilter] = [
    buildsFilter(name: "Gaming", icon: "gamecontroller.fill"),
    buildsFilter(name: "Workstation", icon: "desktopcomputer"),
    buildsFilter(name: "Developer", icon: "person.fill"),
    buildsFilter(name: "Animator", icon: "rotate.3d"),
    buildsFilter(name: "Hybrid", icon: "h.square.fill"),
]

func filterByCode(name: String) -> [buildsFilter] {
    var builds: [buildsFilter] = []
    
    if(name == "Gaming"){
        builds.append(buildsFilter(name: "Gaming", icon: "gameontroller.fill"))
    } else if (name == "WorkStation") {
        builds.append(buildsFilter(name: "WorkStation", icon: "desktopcomputer"))
    } else if (name == "Developer") {
        builds.append(buildsFilter(name: "WorkStation", icon: "person.fill"))
    } else if (name == "Animator") {
        builds.append(buildsFilter(name: "WorkStation", icon: "rotate.3d"))
    }else if (name == "Hybrid"){
        builds.append(buildsFilter(name: "Hybrid", icon: "h.square.fill"))
    } else {
        builds = buildTypes
    }
    
    return builds
}
