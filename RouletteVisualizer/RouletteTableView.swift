//
//  RouletteTableView.swift
//  RouletteVisualizer
//
//  Created by Kevin table on 12/9/24.
//

import SwiftUI

struct RouletteTableView: View {
    @Binding var wheelType: WheelType
    
    @EnvironmentObject var bettingVM: BettingsViewModel
    
    private var cellWidth: CGFloat
    private var cellHeight: CGFloat
    private var lineWidth: CGFloat
    
    init(wheelType: Binding<WheelType>, cellWidth: CGFloat = 40, cellHeight: CGFloat = 40, lineWidth: CGFloat = 1) {
        _wheelType = wheelType
        self.cellWidth = cellWidth
        self.cellHeight = cellHeight
        self.lineWidth = lineWidth
    }
    
    var body: some View {
        HStack(spacing: 0) {
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                if wheelType == .american {
                    GridRow {
                        BettingCellView(betPlaceholder: BetPlaceholder(title: "00", numbers: BettingGroup._00), width: cellWidth, height: (cellHeight*3)/2, lineWidth: lineWidth)
                    }
                }
                GridRow {
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "0", number: RouletteNumber(num: 0, color: .green)), width: cellWidth, height: wheelType == .american ? (cellHeight*3)/2 : (cellHeight*3), lineWidth: lineWidth)
                }
            } // Zeros cells
            .offset(y: -cellHeight)
            .animation(.easeInOut, value: wheelType)
            
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                GridRow {
                    BlankCell()
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "3", number: RouletteNumber.get(3)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "6", number: RouletteNumber.get(6)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "9", number: RouletteNumber.get(9)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "12", number: RouletteNumber.get(12)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "15", number: RouletteNumber.get(15)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "18", number: RouletteNumber.get(18)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "21", number: RouletteNumber.get(21)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "24", number: RouletteNumber.get(24)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "27", number: RouletteNumber.get(27)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "30", number: RouletteNumber.get(30)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "33", number: RouletteNumber.get(33)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "36", number: RouletteNumber.get(36)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "3rd", numbers: BettingGroup._3rd_column), height: cellHeight, lineWidth: lineWidth)
                    
                } // Top horizontal row of cells (3-3rd)
                GridRow {
                    BlankCell()
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "2", number: RouletteNumber.get(2)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "5", number: RouletteNumber.get(5)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "8", number: RouletteNumber.get(8)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "11", number: RouletteNumber.get(11)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "14", number: RouletteNumber.get(14)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "17", number: RouletteNumber.get(17)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "20", number: RouletteNumber.get(20)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "23", number: RouletteNumber.get(23)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "26", number: RouletteNumber.get(26)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "29", number: RouletteNumber.get(29)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "32", number: RouletteNumber.get(32)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "35", number: RouletteNumber.get(35)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "2nd", numbers: BettingGroup._2nd_column), height: cellHeight, lineWidth: lineWidth)
                    
                } // Mid horizontal row of cells (2-2nd)
                GridRow {
                    BlankCell()
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "1", number: RouletteNumber.get(1)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "4", number: RouletteNumber.get(4)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "7", number: RouletteNumber.get(7)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "10", number: RouletteNumber.get(10)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "13", number: RouletteNumber.get(13)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "16", number: RouletteNumber.get(16)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "19", number: RouletteNumber.get(19)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "22", number: RouletteNumber.get(22)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "25", number: RouletteNumber.get(25)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "28", number: RouletteNumber.get(28)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "31", number: RouletteNumber.get(31)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "34", number: RouletteNumber.get(34)), height: cellHeight, lineWidth: lineWidth)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "1st", numbers: BettingGroup._1st_column), height: cellHeight, lineWidth: lineWidth)
                } // Lower horizontal row of cells (1-1st)
                GridRow {
                    BlankCell()
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "1st 21", numbers: BettingGroup._1st_12), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(4)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "2nd 12", numbers: BettingGroup._2nd_12), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(4)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "3rd 12", numbers: BettingGroup._3rd_12), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(4)
                    
                    BlankCell()
                } // Dozens horizontal row of cells (1st 12, 2nd 12, 3rd 12)
                GridRow {
                    BlankCell()
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "1-18", numbers: BettingGroup._1_18), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(2)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "Even", numbers: BettingGroup._EVEN), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(2)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "Red", numbers: BettingGroup._Red), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(2)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "Black", numbers: BettingGroup._Black), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(2)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "Odd", numbers: BettingGroup._ODD), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(2)
                    
                    BettingCellView(betPlaceholder: BetPlaceholder(title: "19-36", numbers: BettingGroup._19_36), height: cellHeight, lineWidth: lineWidth)
                        .gridCellColumns(2)
                    
                    BlankCell()
                } // Lowest horizontal row of cells (outside bets i.e red, black, even, odd, etc.)
            }
        }
    }
        
    fileprivate func BlankCell(width: CGFloat? = nil, height: CGFloat? = nil) -> some View {
        Color.clear
            .frame(width: width, height: height)
            .gridCellUnsizedAxes([.horizontal, .vertical])
    }
    
}


fileprivate struct BettingCellView: View {
    var betPlaceholder: BetPlaceholder
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var lineWidth: CGFloat = 1
    
    @State private var scale: CGFloat = 0.0
    
    @EnvironmentObject var bettingVM: BettingsViewModel
    
    init(betPlaceholder: BetPlaceholder, width: CGFloat? = nil, height: CGFloat? = nil, lineWidth: CGFloat = 1) {
        self.betPlaceholder = betPlaceholder
        self.width = width
        self.height = height
        self.lineWidth = lineWidth
    }
    
    var body: some View {
        Rectangle()
            .fill(betPlaceholder.numbers.count == 1 ? betPlaceholder.numbers.first!.color : ((betPlaceholder.title.lowercased() == "red" || betPlaceholder.title.lowercased() == "black") ? betPlaceholder.numbers.first!.color : Color.table) )
            .strokeBorder(Color.white, lineWidth: lineWidth)
            .overlay(Text(betPlaceholder.title).foregroundStyle(.white).fontWeight(.semibold))
            .overlay {
                Circle()
                    .fill(Color.yellow)
                    .scaledToFit()
                    .padding(3)
                    .opacity(0.6)
                    .scaleEffect(scale)
            } // cell-selected marker
            .frame(width: width, height: height)
            .animation(.easeInOut, value: bettingVM.selectedNumbers)
            .animation(.easeInOut, value: scale)
            .onTapGesture {
                // Toggles adding to 'selected bets'
                let numbers: [Int] = betPlaceholder.numbers.map({ $0.num })
                bettingVM.updateSelected(bet: numbers, isAdding: scale == 0)
                (scale == 0.0) ? (scale = 1.0) : (scale = 0.0)
            }
            .onChange(of: bettingVM.selectedNumbers) { _, newValue in
                // Removes all highlights from wheel and grid
                if newValue.values.allSatisfy({ $0 == 0 }) {
                    scale = 0.0
                }
            }
    }
    
}


//fileprivate struct BettingCellView: View {
//    var numbers: NumericalBet
//    var color: Color
//    var width: CGFloat? = nil
//    var height: CGFloat? = nil
//    var lineWidth: CGFloat = 1
//    
//    @State private var scale: CGFloat = 0.0
//    
//    @EnvironmentObject var bettingVM: BettingsViewModel
//    
//    init(numbers: NumericalBet, color: Color, width: CGFloat? = nil, height: CGFloat? = nil, lineWidth: CGFloat = 1) {
//        self.numbers = numbers
//        self.color = color
//        self.width = width
//        self.height = height
//        self.lineWidth = lineWidth
//    }
//    
//    var body: some View {
//        Rectangle()
//            .fill(color)
//            .strokeBorder(Color.white, lineWidth: lineWidth)
//            .overlay(Text(numbers.title).foregroundStyle(.white).fontWeight(.semibold))
//            .overlay {
//                Circle()
//                    .fill(Color.yellow)
//                    .scaledToFit()
//                    .padding(3)
//                    .opacity(0.6)
//                    .scaleEffect(scale)
//            } // cell-selected marker
//            .frame(width: width, height: height)
//            .animation(.easeInOut, value: bettingVM.selectedNumbers)
//            .animation(.easeInOut, value: scale)
//            .onTapGesture {
//                // Toggles adding to 'selected bets'
//                bettingVM.updateSelected(bet: numbers, isAdding: scale == 0)
//                (scale == 0.0) ? (scale = 1.0) : (scale = 0.0)
//            }
//            .onChange(of: bettingVM.selectedNumbers) { _, newValue in
//                // Removes all highlights from wheel and grid
//                if newValue.values.allSatisfy({ $0 == 0 }) {
//                    scale = 0.0
//                }
//            }
//    }
//    
//}



#Preview {
    ZStack {
        Color.table.ignoresSafeArea()
        RouletteTableView(wheelType: .constant(.american), cellWidth: 40, cellHeight: 40)
            .environmentObject(BettingsViewModel())
    }
}









