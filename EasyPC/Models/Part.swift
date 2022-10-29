//
//  Budget.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/21.
//

import SwiftUI

struct Part: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var partType: String
    var desc: String
    var longDesc: String
    var image: String
    var instructions: [String]
    var tools: [String]
    var key: String
}
