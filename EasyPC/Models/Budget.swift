//
//  Budget.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/21.
//

import SwiftUI

struct Budget: Identifiable {
    var id = UUID()
    var title: String
    var desc: String
    var tools: [String]
    var parts: [Parts]
}
