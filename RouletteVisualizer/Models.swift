//
//  Models.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/28/24.
//

import SwiftUI


// General Number Model
struct RouletteNumber: Equatable, Hashable {
    var num: Int
    var color: Color
    
    static func get(_ number: Int) -> RouletteNumber {
        guard let rNum = Wheel.numbers.first(where: { $0.num == number }) else { return RouletteNumber(num: -100, color: .table) }
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






//struct NumericalBet: Equatable {
//    var title: String
//    var bets: [Int]
//}
//
//struct BettingGroup {
//    static var _1st_12 = [1,2,3,4,5,6,7,8,9,10,11,12]
//    
//    static var _2nd_12 = [13,14,15,16,17,18,19,20,21,22,23,24]
//    
//    static var _3rd_12 = [25,26,27,28,29,30,31,32,33,34,35,36]
//    
//    static var _1_18 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
//    
//    static var _19_36 = [19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36]
//    
//    static var _1st_column = [1,4,7,10,13,16,19,22,25,28,31,34]
//    
//    static var _2nd_column = [2,5,8,11,14,17,20,23,26,29,32,35]
//    
//    static var _3rd_column = [3,6,9,12,15,18,21,24,27,30,33,36]
//    
//    static var _EVEN = [2,4,6,8,0,12,14,16,18,20,22,24,26,28,30,32,34,36]
//    
//    static var _ODD = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35]
//    
//    static var _Red = [1,3,5,7,9,12,14,16,18,19,21,23,25,27,30,32,34,36]
//    
//    static var _Black = [2,4,6,8,10,11,13,15,17,20,22,24,26,28,29,31,33,35]
//    
//    static var _00 = [-1]
//    
//}
//
//struct NumericalBets {
//    
//    static var _1st_12 = NumericalBet(title: "1st 12", bets: BettingGroup._1st_12)
//    
//    static var _2nd_12 = NumericalBet(title: "2nd 12", bets: BettingGroup._2nd_12)
//    
//    static var _3rd_12 = NumericalBet(title: "3rd 12", bets: BettingGroup._3rd_12)
//    
//    static var _1_18 = NumericalBet(title: "1-18", bets: BettingGroup._1_18)
//    
//    static var _19_36 = NumericalBet(title: "19-36", bets: BettingGroup._19_36)
//    
//    static var _1st_column = NumericalBet(title: "1st", bets: BettingGroup._1st_column)
//    
//    static var _2nd_column =  NumericalBet(title: "2nd", bets: BettingGroup._2nd_column)
//    
//    static var _3rd_column = NumericalBet(title: "3rd", bets: BettingGroup._3rd_column)
//    
//    static var _EVEN = NumericalBet(title: "EVEN", bets: BettingGroup._EVEN)
//    
//    static var _ODD = NumericalBet(title: "ODD", bets: BettingGroup._ODD)
//    
//    static var _Red = NumericalBet(title: "Red", bets: BettingGroup._Red)
//    
//    static var _Black = NumericalBet(title: "Black", bets: BettingGroup._Black)
//    
//    static var _00 = NumericalBet(title: "00", bets: BettingGroup._00)
//    
//}




//enum WheelType {
//    case american, european
//}
//
//struct WheelSection: Equatable, Hashable, Identifiable {
//    var id: Int = 1 // { return number }
//    let number: Int
//    let color: Color
//}
//
//struct Wheel {
//    static func sections(for wheelType: WheelType) -> [WheelSection] {
//        switch wheelType {
//        case .american: return americanSections
//        case .european: return europeanSections
//        }
//    }
//    
//    private static let americanSections: [WheelSection] = [
//        WheelSection(number: -1, color: .green),
//        WheelSection(number: 1, color: .red),
//        WheelSection(number: 13, color: .black),
//        WheelSection(number: 36, color: .red),
//        WheelSection(number: 24, color: .black),
//        WheelSection(number: 3, color: .red),
//        WheelSection(number: 15, color: .black),
//        WheelSection(number: 34, color: .red),
//        WheelSection(number: 22, color: .black),
//        WheelSection(number: 5, color: .red),
//        WheelSection(number: 17, color: .black),
//        WheelSection(number: 32, color: .red),
//        WheelSection(number: 20, color: .black),
//        WheelSection(number: 7, color: .red),
//        WheelSection(number: 11, color: .black),
//        WheelSection(number: 30, color: .red),
//        WheelSection(number: 26, color: .black),
//        WheelSection(number: 9, color: .red),
//        WheelSection(number: 28, color: .black),
//        WheelSection(number: 0, color: .green),
//        WheelSection(number: 2, color: .black),
//        WheelSection(number: 14, color: .red),
//        WheelSection(number: 35, color: .black),
//        WheelSection(number: 23, color: .red),
//        WheelSection(number: 4, color: .black),
//        WheelSection(number: 16, color: .red),
//        WheelSection(number: 33, color: .black),
//        WheelSection(number: 21, color: .red),
//        WheelSection(number: 6, color: .black),
//        WheelSection(number: 18, color: .red),
//        WheelSection(number: 31, color: .black),
//        WheelSection(number: 19, color: .red),
//        WheelSection(number: 8, color: .black),
//        WheelSection(number: 12, color: .red),
//        WheelSection(number: 29, color: .black),
//        WheelSection(number: 25, color: .red),
//        WheelSection(number: 10, color: .black),
//        WheelSection(number: 27, color: .red)
//    ]
//
//    private static let europeanSections: [WheelSection] = [
//        WheelSection(number: 32, color: .red),
//        WheelSection(number: 15, color: .black),
//        WheelSection(number: 19, color: .red),
//        WheelSection(number: 4, color: .black),
//        WheelSection(number: 21, color: .red),
//        WheelSection(number: 2, color: .black),
//        WheelSection(number: 25, color: .red),
//        WheelSection(number: 17, color: .black),
//        WheelSection(number: 34, color: .red),
//        WheelSection(number: 6, color: .black),
//        WheelSection(number: 27, color: .red),
//        WheelSection(number: 13, color: .black),
//        WheelSection(number: 36, color: .red),
//        WheelSection(number: 11, color: .black),
//        WheelSection(number: 30, color: .red),
//        WheelSection(number: 8, color: .black),
//        WheelSection(number: 23, color: .red),
//        WheelSection(number: 10, color: .black),
//        WheelSection(number: 5, color: .red),
//        WheelSection(number: 24, color: .black),
//        WheelSection(number: 16, color: .red),
//        WheelSection(number: 33, color: .black),
//        WheelSection(number: 1, color: .red),
//        WheelSection(number: 20, color: .black),
//        WheelSection(number: 14, color: .red),
//        WheelSection(number: 31, color: .black),
//        WheelSection(number: 9, color: .red),
//        WheelSection(number: 22, color: .black),
//        WheelSection(number: 18, color: .red),
//        WheelSection(number: 29, color: .black),
//        WheelSection(number: 7, color: .red),
//        WheelSection(number: 28, color: .black),
//        WheelSection(number: 12, color: .red),
//        WheelSection(number: 35, color: .black),
//        WheelSection(number: 3, color: .red),
//        WheelSection(number: 26, color: .black),
//        WheelSection(number: 0, color: .green)
//    ]
//
//}

