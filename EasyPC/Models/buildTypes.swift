//
//  buildTypes.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/09.
//

import SwiftUI

struct buildTypes: Identifiable{
    var id = UUID()
    var name: String
    var desc: String
    var tools: [String]
    var parts: [String]
}
