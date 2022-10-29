//
//  PartData.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/24.
//

import SwiftUI

let PartData: [Part] = [
    Part(icon: "cpu", partType: "CPU", desc: "Click the card to learn how to install a cpu", longDesc: "The Central Processing Unit (CPU) functions as the brain of the computer. It has a lot of pins on the back-side of the processor, if it is an Intel CPU, but a lot of open contacts if it is an AMD processor.", image: "cpu", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband", "300mm screwdriver"], key: "cpu"),
    
    Part(icon: "memorychip", partType: "RAM", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "ram", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband"], key: "ram"),
    
    Part(icon: "appclip", partType: "GPU", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "gpu", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband", "300mm Screwdriver"], key: "gpu"),
    
    Part(icon: "m.square", partType: "Motherboard", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "mobo", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband", "300mm Screwdriver"], key: "motherboard"),
    
    Part(icon: "bolt", partType: "Power Supply", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "psu", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband", "300mm Screwdriver", "Zipties"], key: "power supply"),
    
    Part(icon: "internaldrive", partType: "SSD", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "ssd", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband"], key: "ssd"),
    
    Part(icon: "fanblades", partType: "Fans", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "fans", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband", "300mm Screwdriver"], key: "cooling"),
    
    Part(icon: "fanblades", partType: "AIO Cooler", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "aio", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband","300mm Screwdriver", "Thermal Paste"], key: "cpu"),
    
    Part(icon: "fanblades", partType: "CPU Cooler", desc: "Click the card to learn how to install RAM", longDesc: "The Random Access Memory (RAM) holds the information of your current session. The RAM plays an important part of the multi-tasking capability of your computer, so the higher the speed and the more amounts of GB's you can get, the better.", image: "cpu-cooler", instructions: ["NOTE: Make sure you do not touch the side that has pins", "Look for the golden triangle located on one of the four corners of the CPU", "align that with the triangle on the motherboard socket"], tools: ["Anti-Static Wristband", "300mm Screwdriver", "Thermal Paste"], key: "cpu"),
]

//func filterByName(name: String) -> [Part] {
//    var builds: [Part] = []
//
//    if(name == "Gaming"){
//        builds.append(Part(partType: "Gaming", icon: "gameontroller.fill"))
//    } else if (name == "WorkStation") {
//        builds.append(Part(partType: "WorkStation", icon: "desktopcomputer"))
//    } else if (name == "Developer") {
//        builds.append(Part(partType: "WorkStation", icon: "person.fill"))
//    } else if (name == "Animator") {
//        builds.append(Part(partType: "WorkStation", icon: "rotate.3d"))
//    }else if (name == "Hybrid"){
//        builds.append(Part(partType: "Hybrid", icon: "h.square.fill"))
//    } else {
//        builds = PartData
//    }
//
//    return builds
//}

