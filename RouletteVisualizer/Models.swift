//
//  Models.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/28/24.
//

import SwiftUI

//struct TableColor {
//    static var green = Color.tableGreen
//    static var black = Color.tableBlack
//    static var blue = Color.tableBlue
//    static var purple = Color.tablePurple
//}

enum TableColor: String {
    case green
    case black
    case blue
    case purple
    
    var asColor: Color {
        switch self {
        case .green: Color.tableGreen
        case .black: Color.tableBlack
        case .blue: Color.tableBlue
        case .purple: Color.tablePurple
        }
    }
}

// General Number Model
struct RouletteNumber: Equatable, Hashable {
    var num: Int
    var color: Color
    
    static func get(_ number: Int) -> RouletteNumber {
        guard let rNum = Wheel.numbers.first(where: { $0.num == number }) else { return RouletteNumber(num: -100, color: .clear) }
        return rNum
    }
    
    static func == (lhs: RouletteNumber, rhs: RouletteNumber) -> Bool {
        return lhs.num == rhs.num && lhs.color == rhs.color
    }
}


// Table Placeholder Model
struct BetPlaceholder {
    var title: String
    var numbers: [RouletteNumber]
    
    init(title: String, numbers: [RouletteNumber]) {
        self.title = title
        self.numbers = numbers
    }
    
    init(title: String, number: RouletteNumber) {
        self.title = title
        self.numbers = [number]
    }
}

struct BettingGroup {
    static var _1st_12 = [
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 12, color: .red)
    ]
    
    static var _2nd_12 = [
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 24, color: .black)
    ]
    
    static var _3rd_12 = [
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 35, color: .black),
        RouletteNumber(num: 36, color: .red)
    ]
    
    static var _1_18 = [
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 18, color: .red)
    ]
    
    static var _19_36 = [
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 35, color: .black),
        RouletteNumber(num: 36, color: .red)
    ]
    
    static var _1st_column = [
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 34, color: .red)
    ]
    
    static var _2nd_column = [
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 35, color: .black)
    ]
    
    static var _3rd_column = [
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 36, color: .red)
    ]
    
    static var _EVEN = [
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 36, color: .red)
    ]
    
    static var _ODD = [
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 35, color: .black)
    ]
    
    static var _Red = [
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 36, color: .red)
    ]
    
    static var _Black = [
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 35, color: .black)
    ]
    
    static var _00 = [
        RouletteNumber(num: -1, color: .green)
    ]
}


// Wheel Models
enum WheelType {
    case american, european
}

struct Wheel {
    static func sections(for wheelType: WheelType) -> [RouletteNumber] {
        switch wheelType {
        case .american: return americanSections
        case .european: return europeanSections
        }
    }
    
    public static let numbers: [RouletteNumber] = [
        RouletteNumber(num: -1, color: .green),
        RouletteNumber(num: 0, color: .green),
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 35, color: .black),
        RouletteNumber(num: 36, color: .red)
    ]
    
    private static let americanSections: [RouletteNumber] = [
        RouletteNumber(num: -1, color: .green),
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 36, color: .red),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 0, color: .green),
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 35, color: .black),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 27, color: .red)
    ]

    private static let europeanSections: [RouletteNumber] = [
        RouletteNumber(num: 32, color: .red),
        RouletteNumber(num: 15, color: .black),
        RouletteNumber(num: 19, color: .red),
        RouletteNumber(num: 4, color: .black),
        RouletteNumber(num: 21, color: .red),
        RouletteNumber(num: 2, color: .black),
        RouletteNumber(num: 25, color: .red),
        RouletteNumber(num: 17, color: .black),
        RouletteNumber(num: 34, color: .red),
        RouletteNumber(num: 6, color: .black),
        RouletteNumber(num: 27, color: .red),
        RouletteNumber(num: 13, color: .black),
        RouletteNumber(num: 36, color: .red),
        RouletteNumber(num: 11, color: .black),
        RouletteNumber(num: 30, color: .red),
        RouletteNumber(num: 8, color: .black),
        RouletteNumber(num: 23, color: .red),
        RouletteNumber(num: 10, color: .black),
        RouletteNumber(num: 5, color: .red),
        RouletteNumber(num: 24, color: .black),
        RouletteNumber(num: 16, color: .red),
        RouletteNumber(num: 33, color: .black),
        RouletteNumber(num: 1, color: .red),
        RouletteNumber(num: 20, color: .black),
        RouletteNumber(num: 14, color: .red),
        RouletteNumber(num: 31, color: .black),
        RouletteNumber(num: 9, color: .red),
        RouletteNumber(num: 22, color: .black),
        RouletteNumber(num: 18, color: .red),
        RouletteNumber(num: 29, color: .black),
        RouletteNumber(num: 7, color: .red),
        RouletteNumber(num: 28, color: .black),
        RouletteNumber(num: 12, color: .red),
        RouletteNumber(num: 35, color: .black),
        RouletteNumber(num: 3, color: .red),
        RouletteNumber(num: 26, color: .black),
        RouletteNumber(num: 0, color: .green)
    ]

}



