//
//  BettingsViewModel.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/28/24.
//

import SwiftUI

final class BettingsViewModel: ObservableObject {
    @Published var selectedNumbers: Dictionary<Int,Int> = [-1:0, 0:0, 1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0, 10:0, 11:0, 12:0, 13:0, 14:0, 15:0, 16:0, 17:0, 18:0, 19:0, 20:0, 21:0, 22:0, 23:0, 24:0, 25:0, 26:0, 27:0, 28:0, 29:0, 30:0, 31:0, 32:0, 33:0, 34:0, 35:0, 36:0]
    
    func updateSelected(bet: [Int], isAdding: Bool) {
        for num in bet {
            isAdding ? (selectedNumbers[num]! += 1) : (selectedNumbers[num]! -= 1)
        }
    }
    
    func clearAllSelectedBets() {
        self.selectedNumbers.keys.forEach { key in
            selectedNumbers.updateValue(0, forKey: key)
        }
    }
    
}
